FROM ubuntu

RUN apt-get update && \
  apt-get -y install software-properties-common && \
  add-apt-repository ppa:maxmind/ppa && \
  apt-get -y install geoipupdate

RUN rm /etc/GeoIP.conf && \
  mkdir /etc/conf && \
  ln -s /etc/conf/GeoIP.conf /etc/GeoIP.conf && \
  mkdir /latest

WORKDIR /latest

ENTRYPOINT [ "geoipupdate", "--database-directory", "/latest" ]
