terraform {
  backend "remote" {
    organization = "harbingers"

    workspaces {
      name = "grz-terraform"
    }
  }

  required_version = ">= 0.13.0"
}