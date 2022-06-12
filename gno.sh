#!/bin/sh
json=$(curl "https://api.notion.com/v1/pages/$notion_page_id" \
  --silent \
  -H 'Authorization: Bearer '"$notion_api_key"'' \
  -H "Notion-Version: 2022-02-22")
key="id"

url=$(echo -n $json | grep -o '"url":".*"')
url=${url:7}
url=${url%?}

echo -n $url