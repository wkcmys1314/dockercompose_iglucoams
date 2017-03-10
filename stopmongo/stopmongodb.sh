#!/bin/sh
#mongo <<- EOF
#use admin
#db.shutdownServer()
#exit
#EOF
mongo <<- EOF
use admin
db.auth("admin","admin")
db.shutdownServer()
EOF
