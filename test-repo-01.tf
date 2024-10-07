variable "github_pat" {
  description = "GitHub PAT"
  type        = string
}

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    token = var.github_pat
}

resource "github_repository" "test-repo-01" {
  name        = "test-repo-01"
  description = "tf"

  visibility = "public"
}
