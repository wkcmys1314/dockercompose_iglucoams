#!/bin/bash
export MONGO_URL="mongodb://iglucoams:linkweb911@dockercompose_mongodb_1:27017/iglucoams"
export ROOT_URL="http://127.0.0.1"
export PORT=4002
export PRONAME='iGlucoAMS'
export SRCDIR=/data/iglucoams/src/
export METEOR_SETTINGS=$(cat $SRCDIR/settings.json)
pm2 show $PRONAME > /dev/null 2>&1
if [ $? = 0 ];then
        pm2 delete $PRONAME
fi
pm2 start /data/iglucoams/bundle/main.js --name "$PRONAME"
