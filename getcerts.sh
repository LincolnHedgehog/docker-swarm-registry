#!/bin/sh

main(){
  if [ $# != 2 ]; then
    echo 'Needs two arguments, one domain name and one email address'
    exit 1
  fi
  LE_FOLDER="letsencrypt"
  DESTINATION="certs"
  mkdir -p $LE_FOLDER
  set -x
  docker run --rm -p 80:80 -p 443:443 -v $(pwd)/$LE_FOLDER:/etc/letsencrypt certbot/certbot certonly -d $1 --standalone -m $2 --agree-tos --non-interactive
  cp $LE_FOLDER/live/$1/fullchain.pem $DESTINATION/
  cp $LE_FOLDER/live/$1/privkey.pem $DESTINATION/
  set +x
}

main "$@"