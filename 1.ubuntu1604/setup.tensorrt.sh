#! /bin/bash

echo $0

# 截止20181221
# 浏览器下载获得的地址
# 由于会过期而无法使用wget
# https://developer.nvidia.com/nvidia-tensorrt-4x-download
PACKAGE=TensorRT-4.0.1.6.Ubuntu-16.04.4.x86_64-gnu.cuda-9.2.cudnn7.1.tar.gz

find . -maxdepth 1 -name "$PACKAGE"
if [ $? != 0 ]; then
	exit 1
fi

tar xvf $PACKAGE
if [ $? != 0 ]; then
	exit 1
fi

exit 0