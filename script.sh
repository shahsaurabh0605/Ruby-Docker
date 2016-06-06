#!/bin/bash

body='{
"request": {
  "branch":"master"
}}'

curl -s -X POST \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -H "Travis-API-Version: 3" \
  -H "Authorization: token smEOuqMAAUcwLHBnFjnJkA" \
  -d "$body" \
  https://api.travis-ci.org/repo/ruby-bench%2Fruby-bench-docker/requests


