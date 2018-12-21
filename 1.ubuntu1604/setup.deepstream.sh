#! /bin/bash

echo $0

DIR=DeepStream_Release
PACKAGE=DeepStreamSDK-2.0_EA_beta1.2.tbz2

# 截止20181221
# 浏览器下载获得的地址
# 由于会过期而无法使用wget

find . -maxdepth 1 -name "$PACKAGE"
if [ $? != 0 ]; then
	exit 1
fi

tar -xvf $PACKAGE
if [ $? != 0 ]; then
	exit 1
fi

cd $DIR
	if [ $? != 0 ]; then
		exit 1
	fi

	# Installing Pre-requisites:
	sudo apt-get install libssl1.0.0 \
    					 libjpeg8 \
    					 libgstreamer1.0-0 \
    					 gstreamer-tools \
    					 gstreamer1.0-plugins-good \
    					 gstreamer1.0-plugins-bad \
    					 gstreamer1.0-plugins-ugly \
    					 gstreamer1.0-libav \
    					 libgtk-3-0

	sudo tar -xvf binaries.tbz2 -C /
cd ..

exit 0