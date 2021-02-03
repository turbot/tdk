# Check unapproved IAM Group policy attachments based on name (e.g. FullAccess)

# Set policy to check unapproved policy attachments
resource "turbot_policy_setting" "aws_iam_group_policy_attachement_approved" {
    resource        = turbot_smart_folder.aws_iam.id
    type            = "tmod:@turbot/aws-iam#/policy/types/groupPolicyAttachmentsApproved"
    value           = "Check: Approved"
                      ## "Enforce: Delete unapproved"
}

# Identify policy names that are unapproved
resource "turbot_policy_setting" "aws_iam_group_policy_attachement_rules" {
    resource        = turbot_smart_folder.aws_iam.id
    type            = "tmod:@turbot/aws-iam#/policy/types/groupPolicyAttachmentsApprovedRules"
    value           = <<-POLICY
        REJECT $.PolicyName:/^.+FullAccess.*$/
        REJECT $.PolicyName:AdministratorAccess
        APPROVE *
        POLICY
}






