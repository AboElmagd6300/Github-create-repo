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

//Resource Block to add repo
resource "github_repository" "github-create-repo" {
  name = "Github-create-repo"
  description = "Github-repo"
  visibility = "public"
}

// module to pull repo
/*
module "github_repo" {
  source = "github.com/AboElmagd6300/DolfinedProject-repo.git"
}
*/

// module to pull branch
module "github_repo" {
  source = "github.com/AboElmagd6300/Github-create-repo.git?ref=Branchpull"
}