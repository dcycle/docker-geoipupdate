[![CircleCI](https://circleci.com/gh/dcycle/docker-geoipupdate.svg?style=svg)](https://circleci.com/gh/dcycle/docker-geoipupdate)

Gets the latest version of GEO IP database with [geoipupdate](https://github.com/maxmind/geoipupdate).

Usage
-----

Create an account on Maxmind, and create a new license key in the "My license key" area of the website.

    ACCOUNT=YOUR_ACCOUNT_ID_HERE
    LICENSE=YOUR_LICENSE_KEY_HERE

    mkdir -p ./conf
    echo "AccountID $ACCOUNT" > ./conf/GeoIP.conf
    echo "LicenseKey $LICENSE" >> ./conf/GeoIP.conf
    echo "EditionIDs GeoLite2-ASN GeoLite2-City GeoLite2-Country" >> ./conf/GeoIP.conf

    docker run --rm \
      -v $(pwd)/conf:/etc/conf \
      -v $(pwd)/latest:/latest \
      dcycle/geoipupdate:1

See [this project on the Docker Hub](https://hub.docker.com/r/dcycle/geoipupdate/).

More resources
-----

 * [Maxmind](http://www.maxmind.com).
