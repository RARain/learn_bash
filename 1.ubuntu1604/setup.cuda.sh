#! /bin/bash

echo $0

PACKAGE=cuda_9.2.148_396.37_linux.run

# 截止20181210
# 浏览器下载runfile获得的地址
# 由于会过期而无法使用wget

find . -maxdepth 1 -name "$PACKAGE"
if [ $? == 0 ]; then
	sudo bash $PACKAGE
	if [ $? != 0 ]; then
		exit $?
	fi
fi

exit 0