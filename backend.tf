terraform {
  backend "remote" {
    organization = "harbingers"

    workspaces {
      name = "har-terraform"
    }
  }

  required_version = ">= 0.13.0"
}