variable "smart_folder_title" {
  type        = string
  description = "Enter a title for the smart folder"
}

variable "target_resource" {
  type        = string
  description = "Enter a target_resource to attach the smart folder and apply its policies."
}

variable "approved_account_ami_list" {
  type        = list(string)
  description = "Enter a list of approved AWS account to own trusted AMIs."
}
