#!/bin/sh

main(){
  printf "Domain name: "
  read DOMAIN_NAME
  printf "Email address: "
  read EMAIL
  LE_FOLDER="letsencrypt"
  DESTINATION="certs"
  mkdir -p $LE_FOLDER
  set -x
  docker run --rm -p 80:80 -p 443:443 -v $(pwd)/$LE_FOLDER:/etc/letsencrypt certbot/certbot certonly -d $DOMAIN_NAME --standalone -m $EMAIL --agree-tos --non-interactive
  cp $LE_FOLDER/live/$DOMAIN_NAME/fullchain.pem $DESTINATION/
  cp $LE_FOLDER/live/$DOMAIN_NAME/privkey.pem $DESTINATION/
  set +x
}

main