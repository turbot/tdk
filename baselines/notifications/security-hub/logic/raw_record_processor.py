import json
import datetime as dt
from .record import Record


class RawRecordProcessor:
    def __init__(self, raw_records, account_id, region) -> None:
        self.raw_records = raw_records
        self.region = region
        self.account_id = account_id
        pass

    def __create_finding_id(self, control_id):
        return f"arn:aws:securityhub:{self.region}:{self.account_id}:turbot/{control_id}"

    def process(self):
        print("Started - Process raw records")
        print(f"Number of raw records received: {len(self.raw_records)}")
        records = {}

        for raw_record in self.raw_records:
            json_body = json.loads(raw_record['body'])
            notification = json.loads(json_body['Message'])

            control = notification["control"]
            control_id = control["turbot"]["id"]
            finding_id = self.__create_finding_id(control_id)

            new_record_timestamp = notification["turbot"]["createTimestamp"]
            print(f"Processing raw record - {finding_id} - {new_record_timestamp}")

            notification_type = notification["notificationType"]
            if notification_type != "control_updated":
                print(
                    f"Ignore record - {finding_id} - Notification type `{notification_type}` is not handled currently")
                continue

            resource_metadata = control["resource"]["metadata"]
            if "aws" not in resource_metadata:
                print(f"Ignore record - {finding_id} - Cloud provider not AWS")
                continue

            if finding_id in records:
                exist_record_timestamp = records[finding_id].updated_timestamp

                exist_record_dt = dt.datetime.fromisoformat(exist_record_timestamp[:-1])
                new_record_dt = dt.datetime.fromisoformat(new_record_timestamp[:-1])

                if exist_record_dt <= new_record_dt:
                    records[finding_id] = self.__create_record(finding_id, notification)
                    print(f"Updated existing entry in sorted records - {finding_id} - {new_record_timestamp}")
                else:
                    print(
                        f"Ignore record - {finding_id} - More recent update `{exist_record_timestamp}` exists compared to record `{new_record_timestamp}`")
            else:
                records[finding_id] = self.__create_record(finding_id, notification)
                print(f"Created new entry in sorted records - {finding_id} - {new_record_timestamp}")

        print(f"Consolidated record count: {len(records)}")
        print("Completed - Process raw records")

        return records

    def __create_record(self, id, notification):
        record = {}

        control_type = notification["control"]["type"]["trunk"]["title"]
        aws_metadata = notification["control"]["resource"]["metadata"]["aws"]
        control_reason = notification["control"]["reason"]

        record["id"] = id
        record["control_type"] = control_type

        partition = aws_metadata["partition"] if "partition" in aws_metadata else None
        region_name = aws_metadata["regionName"] if "regionName" in aws_metadata else None
        description = control_reason if control_reason else "No reason given"
        title = ""

        control_state = notification["control"]["state"]
        if control_state == "ok":
            old_control_state = notification["oldControl"]["state"]
            title = f"{old_control_state.capitalize()} - {control_type}"
        else:
            title = f"{control_state.capitalize()} - {control_type}"

        return Record(
            id,
            control_type,
            aws_metadata["accountId"],
            notification["turbot"]["createTimestamp"],
            partition,
            region_name,
            notification["control"]["resource"]["turbot"]["id"],
            title,
            description,
            notification["control"]["resource"]["akas"],
            control_state
        )
