/******************************************
  VPC-SC Perimeter
 *****************************************/
locals {
  project_numbers_data_formatted = formatlist("projects/%s", var.project_numbers)
}

resource "google_access_context_manager_service_perimeter" "perimeter_using_org_level_access_policy" {
  parent = "accessPolicies/${google_access_context_manager_access_policy.org_level_access_policy.name}"
  name   = "accessPolicies/${google_access_context_manager_access_policy.org_level_access_policy.name}/servicePerimeters/perimeter_using_org_level_access_policy"
  title  = "perimeter_using_org_level_access_policy"

  status {
    restricted_services = local.restricted_services_list

    vpc_accessible_services {
      enable_restriction = true
      allowed_services = ["RESTRICTED-SERVICES"]
    }

    resources = local.project_numbers_data_formatted


    ingress_policies {
      ingress_from {
        identities = var.approved_users
        sources {
          access_level = google_access_context_manager_access_level.org_level_access_policy_access_level.name
        }
      }
      ingress_to {
        operations {
          # * allows all services
          service_name = "*"
          # We don't list methods as we're allowing all services
        }
        # * allows access to all projects (resources)
        resources = ["*"]
      }
    }
  }

}
