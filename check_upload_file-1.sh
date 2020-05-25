#!/bin/bash

cd ~/backup_gitlabce
if [ backup.tar.gz -nt upload_date.txt ]; then
  echo "backup.tar.gz is newer than upload_date.txt"
  date "+%Y-%m-%dT%H:%M:%S" > upload_date.txt
else
  echo "upload_date.txt is newer than backup.tar.gz"
  curl --url 'smtps://smtp.gmail.com:465' --ssl-reqd \
  --mail-from 'taku3wzr@gmail.com' \
  --mail-rcpt 'taku3wzr@gmail.com' \
  --upload-file ./gmail-mail.txt \
  --user 'taku3wzr@gmail.com:xxxxxxxxxxxxxxxx' \
  --insecure -v
fi
