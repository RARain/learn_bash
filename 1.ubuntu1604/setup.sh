#! /bin/bash

# Installing Pre-requisites:
sudo apt-get install \
	libssl1.0.0 \
	libjpeg8 \
	libgtk-3-0

# 安装数组
SETUP[0]=$PWD/setup.cuda.sh
SETUP[1]=$PWD/setup.tensorrt.sh
SETUP[2]=$PWD/setup.gstreamer.sh
SETUP[3]=$PWD/setup.opencv.sh
SETUP[4]=$PWD/setup.deepstream.sh

for i in ${SETUP[@]} ; do
	bash $i
	if [ $? != 0 ] ; then
		exit 1
	fi
	clear
done

echo 安装结束
exit 0