/******************************************
  Variables
 *****************************************/
# Service Accounts
variable "approved_users" {
  description = "List of users permitted to work in the Isolator data environment"
  type = list(string)
}

variable "org_id"{
  description = "Organization ID where scoped access policy is applied"
  type = string
}

variable "project_numbers"{
  description = "Project Number to assign to the VPC SC perimeter"
  type = list(string)
}