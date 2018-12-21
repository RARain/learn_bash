#! /bin/bash

echo $0

# 截止20181220
# 浏览器下载runfile获得的地址
# 由于会过期而无法使用wget
# https://developer.nvidia.com/cuda-92-download-archive
PACKAGE=cuda_9.2.148_396.37_linux.run

find . -maxdepth 1 -name "$PACKAGE"
if [ $? != 0 ]; then
	exit 1
fi

sudo bash $PACKAGE
if [ $? != 0 ]; then
	exit 1
fi

exit 0