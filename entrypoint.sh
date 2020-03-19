#!/bin/sh
set -e
if [ ! -z "$OPENBALENA" ] ; then
cat <<EOF > /root/.balenarc.yml
balenaUrl: "$OPENBALENA"
EOF
fi

if [ ! -z "$BALENALOGIN" ] ; then
	balena login -c -e $BALENALOGIN -p $BALENAPASSWORD;
fi
# https://stackoverflow.com/questions/4824590/propagate-all-arguments-in-a-bash-shell-script
args=$@
/bin/sh -c "$args"
