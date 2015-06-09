#!/bin/bash
echo KEY=${UPTIME_ROBOT_API_KEY}
curl -i -H 'Accept: application/json' -H 'Content-Type: application/json' -X GET https://api.uptimerobot.com/getMonitors?apiKey=${UPTIME_ROBOT_API_KEY}&format=json
