#! /bin/bash

cuda10="https://developer.download.nvidia.com/compute/cuda/10.0/secure/Prod/local_installers/cuda_10.0.130_410.48_linux.run?6y_O1T6Z4sedG2CA37sPnmuQGHueYcOjQwMTHafUIPWpd8V0eZs5WutbmJqhU80pK_WyBLB_qvDSAeW5VAACRY2I5DFwGlGvm9diEZ9JgQyz01WF4seC7BS5QnP5v2uHxyawx6Q2GqEAxS9tQrgudIQd37wwpOmKeub_TEx-hkPiOFR0zvh6qPJ6KZ8"
echo $cuda10
wget -c $cuda10 -O cuda_10.0.130_410.48_linux.run
if [ $? == 0 ]; then
	sudo bash cuda_10.0.130_410.48_linux.run
	if [ $? != 0 ]; then
		exit $?
	fi
fi

exit 0