variable "discord_token" {
  type = string
}

variable "disserver_id" {
  type    = string
  default = "861382905137332224"
}

locals {
  layout = jsondecode(data.local_file.jsonLayout.content)
}