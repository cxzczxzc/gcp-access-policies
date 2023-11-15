/******************************************
  Provider
 *****************************************/

terraform {
  // Only update if you wish to go to another version, this keeps it within 1.
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    google = {
      source = "hashicorp/google"
      // Update below if you need a feature in a newer version
      // and need to make sure it stays at that newer provider version
      version = ">=4.0.0"
    }
    google-beta = {
      source = "hashicorp/google-beta"
      // Update below if you need a feature in a newer version
      // and need to make sure it stays at that newer provider version
      version = ">=4.0.0"
    }

  }

}