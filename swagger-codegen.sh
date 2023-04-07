#!/bin/bash

# exit on error
set -e

for FILE in $(find ../amzn_sp_api/models -name "*.json"); do
  API_NAME=$(echo "$FILE" | awk -F/ '{print $4}')
  MODULE_NAME=$(echo "$API_NAME" | perl -pe 's/(^|_)./uc($&)/ge;s/_//g')
  tempPath="lib/$API_NAME"
  if [ ! -d "$tempPath" ]; then
     mkdir "$tempPath"
  else
    rm -r "$tempPath"
  fi

  cp config.json lib/$API_NAME
  sed -i '' "s/GEMNAME/$API_NAME/g" lib/$API_NAME/config.json
  sed -i '' "s/MODULENAME/$MODULE_NAME/g" lib/"$API_NAME"/config.json

  # Windows
#  java -jar swagger-codegen-cli.jar generate -i "$FILE" -l ruby -c lib/"$API_NAME"/config.json -o lib/"$API_NAME"
  # Mac
  swagger-codegen generate -i "$FILE" -l ruby -c lib/"$API_NAME"/config.json -o lib/"$API_NAME"

  mv lib/"$API_NAME"/lib/"$API_NAME".rb lib/
  mv lib/"$API_NAME"/lib/"$API_NAME"/* lib/"$API_NAME"
  rm -r lib/"$API_NAME"/lib
  rm lib/"$API_NAME"/*.gemspec
done
