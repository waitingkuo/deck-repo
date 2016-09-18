#!/bin/bash

PLATFORM=linux
VERSION=v3.0.7
VERSION=v3.0.8
VERSION=v3.0.9


URL=https://github.com/coreos/etcd/releases/download/$VERSION/etcd-$VERSION-$PLATFORM-amd64.tar.gz
TAR_FILENAME=etcd-$VERSION-$PLATFORM-amd64.tar.gz
DIR=etcd-$VERSION-$PLATFORM-amd64

echo "Downloading $URL"
cd /tmp
curl -L $URL -o etcd.tar.gz
tar zxvf etcd.tar.gz
cd $DIR

ROOT=/var/www/html/deck
BASE=$ROOT/linux/amd64/etcd

mkdir -p $BASE
cp etcd $BASE/etcd
cp etcdctl $BASE/etcdctl

