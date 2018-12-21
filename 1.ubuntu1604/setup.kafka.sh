#! /bin/bash

echo $0

DIR=librdkafka-0.11.6
PACKAGE=librdkafka-0.11.6.tar.gz
URL=https://codeload.github.com/edenhill/librdkafka/tar.gz/v0.11.6

FIND=`find . -maxdepth 1 -name "$PACKAGE"`
if [ "$FIND" == "" ]; then
	wget -c $URL -O $PACKAGE
	if [ $? != 0 ]; then
		exit 1
	fi
fi

rm -rf $DIR
tar -xvf $PACKAGE
if [ $? != 0 ]; then
	rm $PACKAGE
	exit 1
fi

cd $DIR
	./configure
	make
	sudo make install
cd ..

exit 0