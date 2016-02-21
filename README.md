# What is ol3-cesium ?
ol3-cesium is OpenLayers with Cesium integration library.
See [ol3-cesium](http://openlayers.org/ol3-cesium/)

# How to use this image

## Build a local image

This image is built under ubuntu 14.04 with mapserver version 6.4.1.
```
git clone https://github.com/pamtrak06/ol3-cesium.git; cd ol3-cesium
docker build -t pamtrak06/ol3-cesium:latest build
```

## Run container

configure script config.sh : set curdir to absolute current path instead of curdir=.
create alias with script alias (all sh scripts are prefixed by d[basename of current folder][root script name]), examples for current directory ol3-cesium:
- build.sh => alias dol3-cesiumbuild  => build image
- run.sh   => alias dol3-cesiumrun    => run a container
- rm.sh    => alias dol3-cesiumrm     => remove all ol3-cesium container
- exec.sh  => alias dol3-cesiumexec   => without parameter, enter in a container, with param., execute param.
- copy.sh  => alias dol3-cesiumcopy   => copy a file from container to host or from host to container

To activate alias
```
$ source alias.sh
```

Create a running container
```
$ ./run.sh
```
or
```
$ dol3-cesiumrun
```
or
```
$ docker run -dt --name "<container name>" -P pamtrak06/ol3-cesium:latest
```

Open a terminal session on a running container
```
$ ./exec.sh
```
or
```
$ dol3-cesiumexec
```
or
```
$ docker run -it "<container name>" bash
```

Execute command on a running container
```
$ ./exec.sh "ps -ef"
```
or
```
$ dol3-cesiumexec "ps -ef"
```
or
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
