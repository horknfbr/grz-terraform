data discord_server discord_api {
    server_id = var.disserver_id
}

data discord_role r5 {
  server_id = data.discord_server.discord_api.id
  name      = "R5"
}

data discord_role r4 {
  server_id = data.discord_server.discord_api.id
  name      = "R4"
}

data discord_role r3 {
  server_id = data.discord_server.discord_api.id
  name      = "R3"
}

data discord_role members {
  server_id = data.discord_server.discord_api.id
  name      = "Members"
}

data discord_role bots {
  server_id = data.discord_server.discord_api.id
  name      = "Bots"
}

data discord_role everyone {
  server_id = data.discord_server.discord_api.id
  name      = "@everyone"
}
