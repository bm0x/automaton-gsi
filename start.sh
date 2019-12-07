#!/bin/bash

###########################################
#                                         #
#                                         #
#      Simple Automatic GSI Patching      #
#            by: ROM-PacMe@XDA            #
#                                         #
#                                         #
###########################################


cd bionic
cp * ../../bionic
cd ../../bionic
xz -cd 0001-Implement-per-process-target-SDK-version-override.xz | patch -p1
rm -f 0001-Implement-per-process-target-SDK-version-override
xz -cd 0002-Actually-restore-pre-P-mutex-behavior.xz | patch -p1
rm -f 0002-Actually-restore-pre-P-mutex-behavior
xz -cd 0003-bionic-Use-legacy-pthread_mutex_init-behavior-on-pre.xz | patch -p1
rm -f 0003-bionic-Use-legacy-pthread_mutex_init-behavior-on-pre
xz -cd 0004-Read-SDK-version-override-from-property.xz | patch -p1
rm -f 0004-Read-SDK-version-override-from-property
xz -cd 0005-Use-vndk_lite-ld.config-only-on-same-version-vendor.xz | patch -p1
rm -f 0005-Use-vndk_lite-ld.config-only-on-same-version-vendor
xz -cd 0006-fixup-Actually-restore-pre-P-mutex-behavior.xz | patch -p1
rm -f 0006-fixup-Actually-restore-pre-P-mutex-behavior
rm -f *.xz

cd ../patches_gsi/bootable_recovery
cp * ../../bootable/recovery
cd ../../bootable/recovery
xz -cd 0001-Don-t-reboot-if-we-couldn-t-get-bootctrl.xz | patch -p1
rm -f 0001-Don-t-reboot-if-we-couldn-t-get-bootctrl
rm -f *.xz

cd ../../patches_gsi/build
cp * ../../build
cd ../../build
xz -cd 0001-Whitelist-radio-HALs-needed-because-they-need-to-e-i.xz | patch -p1
rm -f 0001-Whitelist-radio-HALs-needed-because-they-need-to-e-i
xz -cd 0002-Add-BOARD_SYSTEMIMAGE_AS_SYSTEM-parameter-to-build-S.xz | patch -p1
rm -f 0002-Add-BOARD_SYSTEMIMAGE_AS_SYSTEM-parameter-to-build-S
rm -f *.xz

cd ../patches_gsi/external_selinux
cp * ../../external/selinux
cd ../../external/selinux
xz -cd 0001-Enable-multipl_decls-by-default.-This-is-needed-beca.xz | patch -p1
rm -f 0001-Enable-multipl_decls-by-default.-This-is-needed-beca
xz -cd 0002-Increase-default-log_level-to-get-actual-selinux-err.xz | patch -p1
rm -f 0002-Increase-default-log_level-to-get-actual-selinux-err
xz -cd 0003-Kirin-Workaround-some-conflicting-Kirin-tether-SELin.xz | patch -p1
rm -f 0003-Kirin-Workaround-some-conflicting-Kirin-tether-SELin
xz -cd 0004-Allow-devices-virtual-block-genfscon-conflict-seen-o.xz | patch -p1
rm -f 0004-Allow-devices-virtual-block-genfscon-conflict-seen-o
xz -cd 0005-Most-horrific-Remove-ramdisk-s-zygote-init-scripts.xz | patch -p1
rm -f 0005-Most-horrific-Remove-ramdisk-s-zygote-init-scripts
xz -cd 0006-if-service-is-rcs-accept-conflict.-Seen-on-Moto-E5.xz | patch -p1
rm -f 0006-if-service-is-rcs-accept-conflict.-Seen-on-Moto-E5
xz -cd 0007-Fix-boot-on-Moto-devices-using-unknown-class.xz | patch -p1
rm -f 0007-Fix-boot-on-Moto-devices-using-unknown-class
rm -f *.xz

cd ../../patches_gsi/external_skia
cp * ../../external/skia
cd ../../external/skia
xz -cd 0001-GrGLCaps-allow-ignoring-vendor-supplied-texture-swiz.xz | patch -p1
rm -f 0001-GrGLCaps-allow-ignoring-vendor-supplied-texture-swiz
rm -f *.xz

cd ../../patches_gsi/frameworks_av
cp * ../../frameworks/av
cd ../../frameworks/av
xz -cd 0001-FIH-devices-Fix-Earpiece-audio-output.xz | patch -p1
rm -f 0001-FIH-devices-Fix-Earpiece-audio-output
xz -cd 0002-Fix-WiFi-Display-on-Huawei-devices-EMUI-8.0.xz | patch -p1
rm -f 0002-Fix-WiFi-Display-on-Huawei-devices-EMUI-8.0
xz -cd 0003-Kirin-Remove-lock-to-prevent-self-lock.xz | patch -p1
rm -f 0003-Kirin-Remove-lock-to-prevent-self-lock
xz -cd 0004-We-might-not-have-a-mFlashlight-at-this-state-but-th.xz | patch -p1
rm -f 0004-We-might-not-have-a-mFlashlight-at-this-state-but-th
xz -cd 0005-CameraService-Support-calling-addStates-in-enumerate.xz | patch -p1
rm -f 0005-CameraService-Support-calling-addStates-in-enumerate
xz -cd 0006-Revert-Set-rlimit-rtprio-for-cameraserver.xz | patch -p1
rm -f 0006-Revert-Set-rlimit-rtprio-for-cameraserver
xz -cd 0007-fixup-FIH-devices-Fix-Earpiece-audio-output.xz | patch -p1
rm -f 0007-fixup-FIH-devices-Fix-Earpiece-audio-output
xz -cd 0008-Fix-use-after-free-object-on-stack.xz | patch -p1
rm -f 0008-Fix-use-after-free-object-on-stack
xz -cd 0009-Fix-BT-in-call-on-CAF-devices.xz | patch -p1
rm -f 0009-Fix-BT-in-call-on-CAF-devices
xz -cd 0010-Fix-null-pointer-for-unknown-audio-sources-in-Fix-BT.xz | patch -p1
rm -f 0010-Fix-null-pointer-for-unknown-audio-sources-in-Fix-BT
xz -cd 0011-Add-partial-cam-id-is-hardcoded-support-for-Asus-ZF6.xz | patch -p1
rm -f 0011-Add-partial-cam-id-is-hardcoded-support-for-Asus-ZF6
xz -cd 0012-Fix-for-some-Huawei-camera-that-s-not-ideal-because-.xz | patch -p1
rm -f 0012-Fix-for-some-Huawei-camera-that-s-not-ideal-because-
rm -f *.xz