#!/bin/bash -xv
echo Running $0
URL="https://api.uptimerobot.com/getMonitors?apiKey=${UPTIME_ROBOT_API_KEY}&format=json"
echo URL=$URL
curl -i -H 'Accept: application/json' -H 'Content-Type: application/json' -X GET $URL
