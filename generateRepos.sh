#!/bin/bash

mkdir -p ./repos
sed -n s/\"resolved\"://gp package-lock.json | sed s/,//g | sed "s/ //g" | sed "s/\"//g"> ./repos/npmRepos


pushd repos
while IFS="" read -r p || [ -n "$p" ]
do
  curl -O $p
done < npmRepos
cp ../upload.sh ./
popd
