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
  htpasswd -b $DESTINATION $USERNAME $PASSWORD
  cat auth/htpasswd
}

main