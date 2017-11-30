# registry

Source: https://github.com/docker/docker.github.io/blob/master/registry/recipes/nginx.md

This repo will get you started with a Docker Registry with https and auth.
My goal was to set up a private registry by my own (using Docker only).
I will use this repository for my continuous deployment pipeline. 

Git clone this repo,

If you already have certs, copy them to certs folder.
If you don't you can just run the getcerts.sh script, it will run a certbot and get the certificates for you.

Add a user with setauth.sh script.
If you want to add more users, you should do it with htpasswd -b $FILE $USERNAME $PASSWORD.



### Thanks ###

 * Docker https://www.docker.com/
 * Nginx https://www.nginx.com/resources/wiki/
 * Certbot https://certbot.eff.org/
 * Let's Encrypt https://letsencrypt.org/
