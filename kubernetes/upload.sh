#!/bin/bash

URL=https://github.com/kubernetes/kubernetes/releases/download/v1.3.6/kubernetes.tar.gz
DIR=kubernetes

echo "Downloading $URL"
cd /tmp
curl -L $URL -o kubernetes.tar.gz
tar zxvf kubernetes.tar.gz
cd $DIR

cd /tmp/$DIR/server
tar zxvf kubernetes-server-linux-amd64.tar.gz
cd /tmp/$DIR/server/kubernetes/server/bin

ROOT=/var/www/html/deck
mkdir -p $ROOT/kubernetes
cp kubectl $ROOT/kubernetes/kubectl
cp kubelet $ROOT/kubernetes/kubelet
cp kubemark $ROOT/kubernetes/kubemark
cp kube-dns $ROOT/kubernetes/kube-dns
cp kube-scheduler $ROOT/kubernetes/kube-scheduler
cp kube-proxy $ROOT/kubernetes/kube-proxy
cp kube-apiserver $ROOT/kubernetes/kube-apiserver
cp federation-apiserver $ROOT/kubernetes/federation-apiserver
cp hyperkube $ROOT/kubernetes/hyperkube
cp kube-controller-manager $ROOT/kubernetes/kube-controller-manager
