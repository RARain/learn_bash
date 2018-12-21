#! /bin/bash

# 基础工具
sudo apt install python-pip \
				 python3-pip

# 安装数组
SETUP[0]=$PWD/setup.cuda.sh
SETUP[1]=$PWD/setup.tensorrt.sh
SETUP[2]=$PWD/setup.gstreamer.sh
SETUP[3]=$PWD/setup.opencv.sh
SETUP[4]=$PWD/setup.deepstream.sh
SETUP[5]=$PWD/setup.onnx.sh

for i in ${SETUP[@]} ; do
	bash $i
	if [ $? != 0 ] ; then
		exit 1
	fi
	clear
done

echo 安装结束
exit 0