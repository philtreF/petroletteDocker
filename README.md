# petroletteDocker

This project aims to build petrolette software in a docker environment, ready to use for self-hosting. 

## Tools used
 - Docker
 - Docker-compose
 - Traefik reverse proxy with let's encrypt SSL

## Steps to build an environment
1. Edit docker-compose.yml and change "example.com" email and web host with your domain.
2. run `docker build -t petrolette .`
3. run `docker-compose up -d`
4. Read news using this wonderful tool. 

## Already got a reverse proxy ?
This docker container can be run without traefik if you already got a reverse-proxy

## Project state

Everything works but there are things to improve. The next step is to migrate to a better base image (Node ?), to cleanup the image of unised packages and to simplify the whole process.
Feel free to ask anything or to make pull requests ;)

## Credits

- Software Repository: https://framagit.org/yphil/petrolette (consider donating)
