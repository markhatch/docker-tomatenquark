# docker-tomatenquark

Dockerfile for running a tomatenquark server

You have to use `--net=host` due to master server pinging for server browser.

# Run with default config

`docker run -d --rm --name tomatenquark --net=host markhatch/tomatenquark`

# Custom config

Adjust `server-init.cfg` and then mount into the image.

`docker run -d --rm --name tomatenquark --net=host -v ${PWD}/server-init.cfg:/tomatenquark/server-init.cfg markhatch/tomatenquark`