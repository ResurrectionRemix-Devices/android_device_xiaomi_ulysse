# Audio
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.audio.fluence.speaker=true \
persist.vendor.audio.fluence.voicecall=true \
persist.vendor.audio.fluence.voicerec=false \
ro.vendor.audio.sdk.fluencetype=fluence

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.camera.HAL3.enabled=1 \
vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,org.lineageos.snap \
persist.camera.dual.camera=0

# Fingerprint
PRODUCT_PROPERTY_OVERRIDES += \
persist.qfp=false

# Front Flashlight
PRODUCT_PROPERTY_OVERRIDES += \
persist.s5k3p8sp.flash.low=320 \
persist.s5k3p8sp.flash.light=300 \
persist.ov16885.flash.low=290 \
persist.ov16885.flash.light=275
