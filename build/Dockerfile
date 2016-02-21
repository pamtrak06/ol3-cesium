FROM ubuntu:14.04 

RUN apt-get update
RUN apt-get install -y git-core curl build-essential ant python openjdk-7-jdk

RUN curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
RUN apt-get install -y nodejs

RUN git clone --recursive https://github.com/openlayers/ol3-cesium.git
RUN cd ol3-cesium; make dist

WORKDIR /ol3-cesium

ADD run.sh /
RUN chmod a+x /run.sh 

CMD [ "bash", "-c", "/run.sh" ]

EXPOSE 4000
