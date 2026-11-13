# 1. Tell Terraform we want to use the "local" provider
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

# 2. Configure a resource (a local file) to be managed by Terraform
resource "local_file" "beginner_file" {
  filename = "${path.module}/my-first-infrastructure.txt"
  content  = "Terraform is aweseome!"
}
