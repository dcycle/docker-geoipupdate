set -e
docker pull ubuntu
docker pull dcycle/geoipupdate:1
docker build -t local-dcycle-geoupdate .
