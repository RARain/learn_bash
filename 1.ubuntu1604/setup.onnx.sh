#! /bin/bash

echo $0

# 自动安装如下依赖：
# numpy-1.15.4 onnx-1.3.0 protobuf-3.6.1 six-1.12.0 typing-3.6.6 typing-extensions-3.6.6
sudo pip2 install onnx
if [ $? != 0 ]; then
	exit 1
fi

exit 0