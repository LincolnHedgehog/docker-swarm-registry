#!/bin/sh

main(){
  DESTINATION="auth/htpasswd"
  printf "Username: "
  read USERNAME
  stty -echo
  printf "Password: "
  read PASSWORD
  stty echo
  printf "\n"
  docker run --rm --entrypoint htpasswd registry:2 -Bbn $USERNAME $PASSWORD > $DESTINATION
  cat $DESTINATION
}

main