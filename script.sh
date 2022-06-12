#!/bin/sh
query="{query}"
now=$(date +"%Y-%m-%dT%H:%M:%S%z")

query=${query//\\/\\\\} # \ 
query=${query//\//\\\/} # / 
query=${query//\"/\\\"} # " 
query=${query//   /\\t} # \t
query=${query//
/\\\n} # \n
query=${query//^M/\\\r} # \r
query=${query//^L/\\\f} # \f
query=${query//^H/\\\b} # \b

curl -X PATCH "https://api.notion.com/v1/blocks/$notion_page_id/children" \
  --silent \
  --fail \
  -H 'Authorization: Bearer '"$notion_api_key"'' \
  -H "Content-Type: application/json" \
  -H "Notion-Version: 2022-02-22" \
  --data '{
  "children": [
    {
      "object": "block",
      "type": "paragraph",
      "paragraph": {
        "rich_text": [
          {
            "type": "mention",
            "mention": {
              "date": {
                "start": "'"$now"'"
              }
            }
          },
          {
            "type": "text",
            "text": {
              "content": " "
            }
          },
          {
            "type": "text",
            "text": {
              "content": "'"$query"'"
            }
          }
        ]
      }
    }
  ]
}'