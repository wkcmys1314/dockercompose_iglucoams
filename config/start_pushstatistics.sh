# !/bin/bash
export DBVENDER="mysql"
export AMSPUSHURL="http://dockercompose_iglucoams_1:4002/stdatas"
export CLIENTREGION="cn"
# export AMSPROXY="http://192.168.69.53:31123"
pm2 start /data/pushstatistics/lib/index.js --name PushStDatas
