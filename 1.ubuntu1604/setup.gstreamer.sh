#! /bin/bash

echo $0

# https://gstreamer.freedesktop.org/documentation/installing/on-linux.html
sudo apt-get install libgstreamer1.0-0 \
						gstreamer1.0-plugins-base \
						gstreamer1.0-plugins-good \
						gstreamer1.0-plugins-bad \
						gstreamer1.0-plugins-ugly \
						gstreamer1.0-libav \
						gstreamer1.0-doc \
						gstreamer1.0-tools \
						gstreamer1.0-x \
						gstreamer1.0-alsa \
						gstreamer1.0-pulseaudio

if [ $? != 0 ]; then
	exit 1
fi

exit 0