#!/bin/bash

BUILDS=(5.016003 5.018002 5.020002)
LATEST="5.020002"

dockerLatest() {
  echo "amuxbit/docker-perl:latest -> amuxbit/docker-perl:$LATEST"
  docker tag -f amuxbit/docker-perl:$LATEST amuxbit/docker-perl:latest
}

buildVersion() {
  pushd $1
  bash build.sh
  popd
}

build() {
  runCmd buildVersion "${BUILDS[@]}"
}

main() {
  if [ -e lib ]; then
    pushd lib
    git pull
    popd
  else
    git clone git@github.com:Amuxbit/container-automation-lib.git lib
  fi

  source lib/core.sh

  local commands=(setTrap info build dockerLatest)
  run "${commands[@]}"
  catch
}

main
