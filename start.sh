#!/usr/bin/zsh

set -eu

docker compose -f ./containers/docker-compose.yml down

mvn clean package

sudo rm -rf ./containers/target/ministryofcrabs.war

sudo cp ./target/ministryofcrabs.war ./containers/target/

docker compose -f ./containers/docker-compose.yml up -d