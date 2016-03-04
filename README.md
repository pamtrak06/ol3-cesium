# What is ol3-cesium ?
ol3-cesium is OpenLayers with Cesium integration library.
See [ol3-cesium](http://openlayers.org/ol3-cesium/)

For easy use of docker command, try [edocker](https://github.com/pamtrak06/edocker).
Create your edocker.cfg configuration file (parameters for most used docker commands ) and then use edocker<command> in any docker working project container those configuration file !

# How to use this image

## Build a local image

This image is built under ubuntu 14.04 with mapserver version 6.4.1.
```
git clone https://github.com/pamtrak06/ol3-cesium.git; cd ol3-cesium
docker build -t pamtrak06/ol3-cesium:latest build
```

## Run container

```
$ docker run -dt --name "<container name>" -P pamtrak06/ol3-cesium:latest
```

Open a terminal session on a running container
```
$ docker run -it "<container name>" bash
```

Execute command on a running container
```
$ docker run -it "<container name>" bash -c "ps -ef"
```

Exit container without stop it
```
CTRL+P  &  CTRL+Q
```

Get docker vm ip from windows or mac : 
```
$ docker-machine env default
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="/Users/jp/.docker/machine/machines/default"
export DOCKER_MACHINE_NAME="default"
# Run this command to configure your shell: 
# eval "$(docker-machine env default)"
```

Test win/mac install  : http://192.168.99.100:32768

Test lin install      : http://<host ip>:32768
