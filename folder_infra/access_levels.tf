/******************************************
  Access Levels
 *****************************************/
resource "google_access_context_manager_access_level" "scoped_access_policy_access_level" {
  parent = "accessPolicies/${google_access_context_manager_access_policy.access-policy.name}"
  name   = "accessPolicies/${google_access_context_manager_access_policy.access-policy.name}/accessLevels/scoped_access_policy_access_level"
  title  = "scoped_access_policy_access_level"
  basic {
    conditions {
      regions = ["CH", "IT", "US"]
    }
  }

}

resource "google_access_context_manager_access_policy" "access-policy" {
  parent = "organizations/${var.org_id}"
  title  = "folder-scoped-access-policy"
  scopes = ["folders/${var.folder_id}"]
}
