resource discord_text_channel announce {
  name = "announcements"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.info.id 
  position = 1
}

resource discord_text_channel rules {
  name = "rules"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.info.id 
  position = 2
}

resource discord_text_channel welcome {
  name = "welcome"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.info.id 
  position = 3
}

resource discord_text_channel public-english {
  name = "public-english"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.guest.id 
  position = 4
}

resource discord_text_channel public-russian {
  name = "public-русский"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.guest.id 
  position = 5
}

resource discord_text_channel public-vietnamese {
  name = "public-tiếng-việt"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.guest.id 
  position = 6
}

resource discord_text_channel public-turkish {
  name = "public-türkçe"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.guest.id 
  position = 7
}

resource discord_text_channel public-german {
  name = "public-deutsche"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.guest.id 
  position = 8
}

resource discord_text_channel public-polish {
  name = "public-ˈpɔlskʲi"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.guest.id 
  position = 9
}

resource discord_text_channel public-thai {
  name = "public-ภาษาไทย"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.guest.id 
  position = 10
}

resource discord_text_channel public-spanish {
  name = "public-español"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.guest.id 
  position = 11
}

resource discord_text_channel public-japanese {
  name = "public-日本語"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.guest.id 
  position = 12
}

resource discord_text_channel public-chinese {
  name = "public-中文語"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.guest.id 
  position = 13
}

resource discord_text_channel public-korean {
  name = "public-한국말"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.guest.id 
  position = 14
}

resource discord_text_channel public-arabic {
  name = "public-اَلْعَرَبِيَّةُ"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.guest.id 
  position = 15
}

resource discord_text_channel gen-english {
  name = "general-english"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intchat.id 
  position = 16
}

resource discord_text_channel gen-russian {
  name = "general-русский"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intchat.id 
  position = 17
}

resource discord_text_channel gen-vietnamese {
  name = "general-tiếng-việt"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intchat.id 
  position = 18
}

resource discord_text_channel gen-turkish {
  name = "general-türkçe"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intchat.id 
  position = 19
}

resource discord_text_channel gen-german {
  name = "general-deutsche"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intchat.id 
  position = 20
}

resource discord_text_channel gen-polish {
  name = "general-ˈpɔlskʲi"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intchat.id 
  position = 21
}

resource discord_text_channel gen-thai {
  name = "general-ภาษาไทย"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intchat.id 
  position = 22
}

resource discord_text_channel gen-spanish {
  name = "general-español"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intchat.id 
  position = 23
}

resource discord_text_channel gen-japanese {
  name = "general-日本語"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intchat.id 
  position = 24
}

resource discord_text_channel gen-chinese {
  name = "general-中文語"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intchat.id 
  position = 25
}

resource discord_text_channel gen-korean {
  name = "general-한국말"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intchat.id 
  position = 26
}

resource discord_text_channel gen-arabic {
  name = "general-اَلْعَرَبِيَّةُ"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intchat.id 
  position = 27
}

resource discord_text_channel kb-english {
  name = "knowlegebase-english"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 28
}

resource discord_text_channel kb-russian {
  name = "knowlegebase-русский"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 29
}

resource discord_text_channel kb-vietnamese {
  name = "knowlegebase-tiếng-việt"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 30
}

resource discord_text_channel kb-turkish {
  name = "knowlegebase-türkçe"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 31
}

resource discord_text_channel kb-german {
  name = "knowlegebase-deutsche"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 32
}

resource discord_text_channel kb-polish {
  name = "knowlegebase-ˈpɔlskʲi"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 33
}

resource discord_text_channel kb-thai {
  name = "knowlegebase-ภาษาไทย"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 34
}

resource discord_text_channel kb-spanish {
  name = "knowlegebase-español"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 35
}

resource discord_text_channel kb-japanese {
  name = "knowlegebase-日本語"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 36
}

resource discord_text_channel kb-chinese {
  name = "knowlegebase-中文語"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 37
}

resource discord_text_channel kb-korean {
  name = "knowlegebase-한국말"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 38
}

resource discord_text_channel kb-arabic {
  name = "knowlegebase-اَلْعَرَبِيَّةُ"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 39
}

resource discord_text_channel form-english {
  name = "formations-english"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 40
}

resource discord_text_channel form-russian {
  name = "formations-русский"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 41
}

resource discord_text_channel form-vietnamese {
  name = "formations-tiếng-việt"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 42
}

resource discord_text_channel form-turkish {
  name = "formations-türkçe"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 43
}

resource discord_text_channel form-german {
  name = "formations-deutsche"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 44
}

resource discord_text_channel form-polish {
  name = "formations-ˈpɔlskʲi"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 45
}

resource discord_text_channel form-thai {
  name = "formations-ภาษาไทย"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 46
}

resource discord_text_channel form-spanish {
  name = "formations-español"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 47
}

resource discord_text_channel form-japanese {
  name = "formations-日本語"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 48
}

resource discord_text_channel form-chinese {
  name = "formations-中文語"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 49
}

resource discord_text_channel form-korean {
  name = "formations-한국말"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 50
}

resource discord_text_channel form-arabic {
  name = "formations-اَلْعَرَبِيَّةُ"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intinfo.id 
  position = 51
}

resource discord_text_channel aw-english {
  name = "attack-warning-english"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 52
}

resource discord_text_channel aw-russian {
  name = "attack-warning-русский"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 53
}

resource discord_text_channel aw-vietnamese {
  name = "attack-warning-tiếng-việt"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 54
}

resource discord_text_channel aw-turkish {
  name = "attack-warning-türkçe"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 55
}

resource discord_text_channel aw-german {
  name = "attack-warning-deutsche"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 56
}

resource discord_text_channel aw-polish {
  name = "attack-warning-ˈpɔlskʲi"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 57
}

resource discord_text_channel aw-thai {
  name = "attack-warning-ภาษาไทย"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 58
}

resource discord_text_channel aw-spanish {
  name = "attack-warning-español"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 59
}

resource discord_text_channel aw-japanese {
  name = "attack-warning-日本語"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 60
}

resource discord_text_channel aw-chinese {
  name = "attack-warning-中文語"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 61
}

resource discord_text_channel aw-korean {
  name = "attack-warning-한국말"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 62
}

resource discord_text_channel aw-arabic {
  name = "attack-warning-اَلْعَرَبِيَّةُ"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 63
}

resource discord_text_channel active-english {
  name = "activities-english"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 64
}

resource discord_text_channel active-russian {
  name = "activities-русский"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 65
}

resource discord_text_channel active-vietnamese {
  name = "activities-tiếng-việt"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 66
}

resource discord_text_channel active-turkish {
  name = "activities-türkçe"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 67
}

resource discord_text_channel active-german {
  name = "activities-deutsche"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 68
}

resource discord_text_channel active-polish {
  name = "activities-ˈpɔlskʲi"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 69
}

resource discord_text_channel active-thai {
  name = "activities-ภาษาไทย"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 70
}

resource discord_text_channel active-spanish {
  name = "activities-español"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 71
}

resource discord_text_channel active-japanese {
  name = "activities-日本語"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 72
}

resource discord_text_channel active-chinese {
  name = "activities-中文語"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 73
}

resource discord_text_channel active-korean {
  name = "activities-한국말"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 74
}

resource discord_text_channel active-arabic {
  name = "activities-اَلْعَرَبِيَّةُ"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.intalert.id 
  position = 75
}

resource discord_text_channel r4-english {
  name = "r4-english"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.leaders.id 
  position = 76
}

resource discord_text_channel r4-russian {
  name = "r4-русский"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.leaders.id 
  position = 77
}

resource discord_text_channel r4-vietnamese {
  name = "r4-tiếng-việt"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.leaders.id 
  position = 78
}

resource discord_text_channel r4-turkish {
  name = "r4-türkçe"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.leaders.id 
  position = 79
}

resource discord_text_channel r4-german {
  name = "r4-deutsche"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.leaders.id 
  position = 80
}

resource discord_text_channel r4-polish {
  name = "r4-ˈpɔlskʲi"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.leaders.id 
  position = 81
}

resource discord_text_channel r4-thai {
  name = "r4-ภาษาไทย"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.leaders.id 
  position = 82
}

resource discord_text_channel r4-spanish {
  name = "r4-español"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.leaders.id 
  position = 83
}

resource discord_text_channel r4-japanese {
  name = "r4-日本語"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.leaders.id 
  position = 84
}

resource discord_text_channel r4-chinese {
  name = "r4-中文語"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.leaders.id 
  position = 85
}

resource discord_text_channel r4-korean {
  name = "r4-한국말"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.leaders.id 
  position = 86
}

resource discord_text_channel r4-arabic {
  name = "r4-اَلْعَرَبِيَّةُ"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.leaders.id 
  position = 87
}

resource discord_text_channel r3-english {
  name = "r3-r5-english"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.cab.id 
  position = 88
}

resource discord_text_channel r3-russian {
  name = "r3-r5-русский"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.cab.id 
  position = 89
}

resource discord_text_channel r3-vietnamese {
  name = "r3-r5-tiếng-việt"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.cab.id 
  position = 90
}

resource discord_text_channel r3-turkish {
  name = "r3-r5-türkçe"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.cab.id 
  position = 91
}

resource discord_text_channel r3-german {
  name = "r3-r5-deutsche"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.cab.id 
  position = 92
}

resource discord_text_channel r3-polish {
  name = "r3-r5-ˈpɔlskʲi"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.cab.id 
  position = 93
}

resource discord_text_channel r3-thai {
  name = "r3-r5-ภาษาไทย"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.cab.id 
  position = 94
}

resource discord_text_channel r3-spanish {
  name = "r3-r5-español"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.cab.id 
  position = 95
}

resource discord_text_channel r3-japanese {
  name = "r3-r5-日本語"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.cab.id 
  position = 96
}

resource discord_text_channel r3-chinese {
  name = "r3-r5-中文語"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.cab.id 
  position = 97
}

resource discord_text_channel r3-korean {
  name = "r3-r5-한국말"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.cab.id 
  position = 98
}

resource discord_text_channel r3-arabic {
  name = "r3-r5-اَلْعَرَبِيَّةُ"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.cab.id 
  position = 99
}

resource discord_text_channel mods {
  name = "moderator-only"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.logs.id 
  position = 100
}

resource discord_text_channel chilling-english {
  name = "chilling-english"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.private.id 
  position = 101
}

resource discord_text_channel chilling-russian {
  name = "chilling-русский"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.private.id 
  position = 102
}

resource discord_text_channel chilling-vietnamese {
  name = "chilling-tiếng-việt"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.private.id 
  position = 103
}

resource discord_text_channel chilling-turkish {
  name = "chilling-türkçe"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.private.id 
  position = 104
}

resource discord_text_channel chilling-german {
  name = "chilling-deutsche"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.private.id 
  position = 105
}

resource discord_text_channel chilling-polish {
  name = "chilling-ˈpɔlskʲi"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.private.id 
  position = 106
}

resource discord_text_channel chilling-thai {
  name = "chilling-ภาษาไทย"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.private.id 
  position = 107
}

resource discord_text_channel chilling-spanish {
  name = "chilling-español"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.private.id 
  position = 108
}

resource discord_text_channel chilling-japanese {
  name = "chilling-日本語"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.private.id 
  position = 109
}

resource discord_text_channel chilling-chinese {
  name = "chilling-中文語"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.private.id 
  position = 110
}

resource discord_text_channel chilling-korean {
  name = "chilling-한국말"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.private.id 
  position = 111
}

resource discord_text_channel chilling-arabic {
  name = "chilling-اَلْعَرَبِيَّةُ"
  server_id = data.discord_server.discord_api.id
  category = discord_category_channel.private.id 
  position = 112
}

