# docker-sync-lite
A simple way to sync local code to docker container.  
You can alse use [http://docker-sync.io/], which is much more powerful.(but maybe you will get some problem with the ruby version.🤣)

## Notice
This project use a docker image based on alpine. If you want to use other image, you should change the docker/dev/Dockerfile to install the `unison` and `inotify-tools`.

## How to use
- rename .env.example to .env
- run: `docker-compose up --build`

## Configures
- env
    - `dev`:  current directory will be watched and sync to /app automatically.
    - `prod`:  current directory will be copied to /app once in the beginning.

