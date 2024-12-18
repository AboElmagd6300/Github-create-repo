// create Github Repository

//Terraform block Defines the providers
terraform {
  required_providers {
    github = {
        source = "integrations/github"
        version = "~> 6.0"
    }
  }
}

//Configures the GitHub provider
provider "github" {
  token = var.token
}

//Resource Block
resource "github_repository" "github-create-repo" {
  name = "Github-create-repo"
  description = "Github-repo"
  visibility = "public"
}
