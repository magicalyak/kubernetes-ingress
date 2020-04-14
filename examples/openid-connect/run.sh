#!/bin/bash

sed -i "s/KEYID/$KID_ENV/" ~/.aws/credentials
sed -i "s/ACCESSKEY/$AKEY_ENV/" ~/.aws/credentials

while :
do
  python3 /root/awssm/secret.py > /etc/nginx/secrets/default.key
  sleep 600
done