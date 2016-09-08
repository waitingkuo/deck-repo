ROOT=/var/www/html/deck
BASE=$ROOT/systemd-units/etcd

mkdir -p $BASE
cp etcd.service $BASE/etcd.service
