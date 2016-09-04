#!/bin/bash

PLATFORM=linux
VERSION=v3.0.7


URL=https://github.com/coreos/etcd/releases/download/$VERSION/etcd-$VERSION-$PLATFORM-amd64.tar.gz
TAR_FILENAME=etcd-$VERSION-$PLATFORM-amd64.tar.gz
DIR=etcd-$VERSION-$PLATFORM-amd64

echo "Downloading $URL"
cd /tmp
curl -L $URL -o etcd.tar.gz
tar zxvf etcd.tar.gz
cd $DIR

ROOT=/var/www/html/deck
mkdir -p $ROOT/etcd
cp etcd $ROOT/etcd/etcd
cp etcdctl $ROOT/etcd/etcdctl

