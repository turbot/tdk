# GCP Logging Policies
# More Info: https://turbot.com/v5/docs/concepts/guardrails/audit-logging

variable "turbot_profile" {
  description = "Enter profile matching your turbot cli credentials."
}

provider "turbot" {
  profile = var.turbot_profile
}

## Create Smart Folder

resource "turbot_smart_folder" "gcp_logging" {
  parent = "tmod:@turbot/turbot#/"
  title  = "GCP Check Logging Policies"
}
