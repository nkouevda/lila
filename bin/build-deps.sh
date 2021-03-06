#!/bin/sh

cd /tmp

git clone git@github.com:ornicar/scalalib.git
cd scalalib
sbt publish-local
cd ..

git clone https://github.com/ornicar/maxmind-geoip2-scala --branch customBuild
cd maxmind-geoip2-scala 
sbt publish-local
cd ..
