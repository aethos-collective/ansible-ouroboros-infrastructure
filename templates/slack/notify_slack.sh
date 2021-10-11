#!/bin/bash
### BEGIN INIT INFO
# Provides: notify_slack
# Required-Start: $local_fs $network $remote_fs
# Required-Stop: $local_fs $network $remote_fs
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Short-Description: Script used to send notifications to Slack Shutdown/Startup
### END INIT INFO

{{ ansible_managed }}

# script adapted from http://www.whiteboardcoder.com/2015/07/notify-slack-when-ubuntu-startsstops.html

slack_url="{{ slack_url }}"
slack_channel="{{ slack_channel }}"
slack_username="{{ slack_username }}"
slack_icon_emoji="{{ slack_icon_emoji }}"

start_text="Name: `hostname`"
start_text+="\nIP: `ip route get 8.8.8.8 | awk '{print $7; exit}'`"
stop_text=$start_text
start_text+="\nMemory: `cat /proc/meminfo | grep MemTotal | awk '{mem= $2/1048576; printf(\"%0.2g GiB\", mem) ; exit}'`"
drive_info="`df -h | grep Filesystem`"
drive_info+="\n`df -h | grep -E '/dev/mmc|/dev/root|/dev/sd'`"

case "$1" in
 test)
  curl -H "Content-type:application/json" \
   -X POST -d \
   '{
      "channel" : "'"$slack_channel"'",
      "username" : "'"$slack_username"'",
      "icon_emoji" : "'"$slack_icon_emoji"'",
      "attachments" : [
        {
          "fallback" : "Testing {{ inventory_hostname_short }} Slack notification!",
          "color" : "good",
          "fields" : [
            {
               "title" : "Testing {{ inventory_hostname_short }} Slack notification!",
               "value" : "'"$start_text"'",
               "short" : "true"
            },
            {
               "title" : "Drive Status",
               "value" : "'"$drive_info"'",
               "short" : "true"
            }
          ]
        }
      ]
    }
   ' $slack_url
  ;;
 start)
   curl -H "Content-type:application/json" \
   -X POST -d \
   '{
      "channel" : "'"$slack_channel"'",
      "username" : "'"$slack_username"'",
      "icon_emoji" : "'"$slack_icon_emoji"'",
      "attachments" : [
        {
          "fallback" : "Server {{ inventory_hostname_short }} Starting up!",
          "color" : "good",
          "fields" : [
            {
               "title" : "Server {{ inventory_hostname_short }} Starting Up!",
               "value" : "'"$start_text"'",
               "short" : "true"
            },
            {
               "title" : "Drive Status",
               "value" : "'"$drive_info"'",
               "short" : "true"
            }
          ]
        }
      ]
    }
   ' $slack_url
   ;;
 stop)
   curl -H "Content-type:application/json" \
   -X POST -d \
   '{
      "channel" : "'"$slack_channel"'",
      "username" : "'"$slack_username"'",
      "icon_emoji" : "'"$slack_icon_emoji"'",
      "attachments" : [
        {
          "fallback" : "Server {{ inventory_hostname_short }} Shutting Down!",
          "color" : "good",
          "fields" : [
            {
               "title" : "Server {{ inventory_hostname_short }} Shutting Down!",
               "value" : "'"$stop_text"'",
               "short" : "true"
            }
          ]
        }
      ]
    }
   ' $slack_url
   ;;
 *)
   echo "INFO: Script used to send notifications to Slack Shutdown/Startup" >&2
   exit 3
   ;;
esac

exit 0

