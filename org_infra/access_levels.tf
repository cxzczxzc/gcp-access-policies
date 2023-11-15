/******************************************
  Access Levels
 *****************************************/
resource "google_access_context_manager_access_level" "org_level_access_policy_access_level" {
  parent = "accessPolicies/${google_access_context_manager_access_policy.org_level_access_policy.name}"
  name   = "accessPolicies/${google_access_context_manager_access_policy.org_level_access_policy.name}/accessLevels/org_level_access_policy_access_level"
  title  = "org-level-access-policy-access-level"
  basic {
    conditions {
      regions = ["AR", "ES", "US"]
      # ip_subnetworks = ["176.0.2.0/24"]
    }
  }

}

resource "google_access_context_manager_access_policy" "org_level_access_policy" {
  parent = "organizations/${var.org_id}"
  title  = "org_level_access_policy"
}
