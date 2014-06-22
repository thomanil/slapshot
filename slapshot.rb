#!/usr/bin/env ruby


# Uploads current, last built apk of the Android project of your
# current path.


if !ARGV[0]
  puts "Usage: slapshot <RELEASE MESSAGE>"
  exit
end

msg = ARGV[0]
apk_path = "todo"
app_api_write_token = "todo"
app_token = "todo"

curl_request = "curl -SsF \"status=2\" -F \"notify=1\" -F \"notes=#{msg}\" -F \"notes_type=0\" -F \"ipa=@./androidapp/build/outputs/apk/androidapp-release.apk\" -H \"X-HockeyAppToken: HOCKEYWRITETOKEN\" https://rink.hockeyapp.net/api/2/apps/APPID/app_versions/upload"

puts "Uploading new release to Hockey..."
response = `#{curl_request}`
# TODO check response, handle errors/anything not 200/ok
puts "New release uploaded to Hockey!"



# ------------
# Notes on useful hockeyapp api calls:

# Get my tokens
# curl --user thomas.nilsson@shortcut.no:<PW> https://rink.hockeyapp.net/api/2/auth_tokens

# List my apps using that token
# curl -H "X-HockeyAppToken: <mytoken>" https://rink.hockeyapp.net/api/2/apps

# List versions of app
# curl -H "X-HockeyAppToken: <mytoken>" \
   #https://rink.hockeyapp.net/api/2/apps/<apptoken>/app_versions

# Create new version (if not already existing. pull version strings from android project)
# curl \
#  -F "bundle_short_version=0.2.9" \
#  -F "bundle_version=21" \
#  -H "X-HockeyAppToken: <mytoken>" \
#  https://rink.hockeyapp.net/api/2/apps/<apptoken>/app_versions/new
