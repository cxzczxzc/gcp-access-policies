/******************************************
  Variables
 *****************************************/
# Service Accounts
variable "approved_data_users" {
  description = "List of users permitted to work in the Isolator data environment"
  type = list(string)
}

variable "folder_id"{
  description = "Folder ID where scoped access policy is applied"
  type = string
}

variable "org_id"{
  description = "Organization ID where scoped access policy is applied"
  type = string
}

variable "project_number"{
  description = "Project Number to assign to the VPC SC perimeter"
}