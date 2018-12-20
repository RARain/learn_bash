#! /bin/bash

# 安装cuda
bash $PWD/setup.cuda.sh
if [ $? != 0 ] ; then
	exit $?
fi

echo 安装结束
exit 0