#!/vendor/bin/sh

FDT_FP_DIR="/sys/firmware/devicetree/base/soc/fpc1020"

if [ -d ${FDT_FP_DIR} ]; then
	setprop ro.has_fp 1
else
	setprop ro.has_fp 0
fi
