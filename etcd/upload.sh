#!/bin/bash

PLATFORM=linux
VERSION=v3.0.7


URL=https://github.com/coreos/etcd/releases/download/$VERSION/etcd-$VERSION-$PLATFORM-amd64.tar.gz
TAR_FILENAME=etcd-$VERSION-$PLATFORM-amd64.tar.gz
DIR=etcd-$VERSION-$PLATFORM-amd64

echo "Downloading $URL"
curl -L $URL -o /tmp/


cd /tmp
tar zxvf TAR_FILENAME
cd /tmp/$DIR
mc cp etcd minio/deck/etcd/etcd
mc cp etcdctl minio/deck/etcd/etcdctl

