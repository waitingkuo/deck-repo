#!/bin/bash

# need to find a way to download specific version
URL=https://github.com/kubernetes/kubernetes/releases/download/v1.4.0-beta.8/kubernetes.tar.gz
URL=https://github.com/kubernetes/kubernetes/releases/download/v1.4.0-beta.7/kubernetes.tar.gz
URL=https://github.com/kubernetes/kubernetes/releases/download/v1.4.0-beta.6/kubernetes.tar.gz
URL=https://github.com/kubernetes/kubernetes/releases/download/v1.4.0-beta.5/kubernetes.tar.gz
#URL=https://github.com/kubernetes/kubernetes/releases/download/v1.4.0-beta.3/kubernetes.tar.gz
URL=https://github.com/kubernetes/kubernetes/releases/download/v1.3.7/kubernetes.tar.gz
DIR=kubernetes

echo "Downloading $URL"
cd /tmp
#curl -L $URL -o kubernetes.tar.gz
#tar zxvf kubernetes.tar.gz
cd $DIR

cd /tmp/$DIR/server
#tar zxvf kubernetes-server-linux-amd64.tar.gz -C linux
cd /tmp/$DIR/server/kubernetes/server/bin

ROOT=/var/www/html/deck

# FIXME should make variable more consistent with other files i.e. $ROOT, $BASE, ...etc

#tar zxvf kubernetes-server-linux-amd64.tar.gz
cd /tmp/$DIR/server/kubernetes/server/bin

BASE=$ROOT/linux/amd64/kubernetes
mkdir -p $BASE
cp kubectl $BASE/kubectl
cp kubelet $BASE/kubelet
cp kubemark $BASE/kubemark
cp kube-dns $BASE/kube-dns
cp kube-scheduler $BASE/kube-scheduler
cp kube-proxy $BASE/kube-proxy
cp kube-apiserver $BASE/kube-apiserver
cp federation-apiserver $BASE/federation-apiserver
cp hyperkube $BASE/hyperkube
cp kube-controller-manager $BASE/kube-controller-manager

BASE=$ROOT/darwin/amd64/kubernetes
mkdir -p $BASE
cp /tmp/$DIR/platforms/darwin/amd64/kubectl $BASE/kubectl

