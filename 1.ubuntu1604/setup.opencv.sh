#! /bin/bash

echo $0

DIR=opencv-3.4.3
PACKAGE=opencv-3.4.3.zip
URL=https://codeload.github.com/opencv/opencv/zip/3.4.3

FIND=`find . -maxdepth 1 -name "$PACKAGE"`
if [ "$FIND" == "" ]; then
	wget -c $URL -O $PACKAGE
	if [ $? != 0 ]; then
		exit 1
	fi
fi

rm -rf $DIR
unzip $PACKAGE
if [ $? != 0 ]; then
	rm $PACKAGE
	exit 1
fi

cd $DIR
	mkdir build
	cd build
		cmake -D CMAKE_BUILD_TYPE=RELEASE \
			  -D CMAKE_INSTALL_PREFIX=/usr/local \
			  -D WITH_CUDA=on \
			  -D ENABLE_FAST_MATH=1 \
			  -D CUDA_FAST_MATH=1 \
			  -D WITH_CUBLAS=1 \
			  -D WITH_NVCUVID=on \
			  -D CUDA_GENERATION=Auto \
			  ..
		make
		sudo make install
	cd ..
cd ..

exit 0