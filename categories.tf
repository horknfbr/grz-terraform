resource discord_category_channel stats {
  server_id = data.discord_server.discord_api.id
  name = "📊 Stats 📊"
  position = 0
}

resource discord_category_channel info {
  server_id = data.discord_server.discord_api.id
  name = "ℹ Information ℹ"
  position = 1
}

resource discord_category_channel guest {
  server_id = data.discord_server.discord_api.id
  name = "💬 Guests 💬"
  position = 2
}

resource discord_category_channel intchat {
  server_id = data.discord_server.discord_api.id
  name = "⛔️ Internal Chat ⛔️"
  position = 3
}

resource discord_category_channel intinfo {
  server_id = data.discord_server.discord_api.id
  name = "🏫 Internal Information 🏫"
  position = 4
}

resource discord_category_channel intalert {
  server_id = data.discord_server.discord_api.id
  name = "🚨 Internal Alerts 🚨"
  position = 5
}

resource discord_category_channel leaders {
  server_id = data.discord_server.discord_api.id
  name = "🔪 Leadership 🔪"
  position = 6
}

resource discord_category_channel cab {
  server_id = data.discord_server.discord_api.id
  name = "🎂 Cabinet 🎂"
  position = 7
}

resource discord_category_channel logs {
  server_id = data.discord_server.discord_api.id
  name = "🥁 Logs and Testing 🥁"
  position = 8
}

resource discord_category_channel private {
  server_id = data.discord_server.discord_api.id
  name = "🙈 Private 🙈"
  position = 9
}

