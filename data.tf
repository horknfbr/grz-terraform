data local_file jsonLayout {
  filename  = "${path.module}/json/layout.json"
}

data discord_permission read {
  view_channel = "allow"
}

data discord_permission blocked {
  view_channel = "deny"
}