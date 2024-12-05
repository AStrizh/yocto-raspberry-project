# yocto-raspberry-project
Creating a Raspberry Pi image for my Operating Systems course

/  ___| |      (_)   | |                  | |  (_)     |  _  /  ___|
\ `--.| |_ _ __ _ ___| |__   _____   _____| | ___ _   _| | | \ `--.
 `--. \ __| '__| |_  / '_ \ / _ \ \ / / __| |/ / | | | | | | |`--. \
/\__/ / |_| |  | |/ /| | | |  __/\ V /\__ \   <| | |_| \ \_/ /\__/ /
\____/ \__|_|  |_/___|_| |_|\___| \_/ |___/_|\_\_|\__, |\___/\____/
                                                   __/ |
                                                  |___/

Due to the size and complexity of the yocto project I am only uploading the changes I have made after going through the Quick Build tutorial: https://docs.yoctoproject.org/brief-yoctoprojectqs/index.html

OS Images:
https://drive.google.com/drive/folders/13YH5c3XX3Ax6-qa4mpcG4ecqMNWUNEJA?usp=sharing

To write the OS to an SD card, for use on a physical Raspberry Pi device:

sudo dd if=~/Documents/yocto/poky/build/tmp/deploy/images/raspberrypi/core-image-minimal-raspberrypi.rpi-sdimg of=/dev/sdb bs=4M status=progress


For use with the QEMU emulator. Requires to download the ext3 file along with the bullseye kernel and dtb file.
You will also need to have qemu-system-arm installed. 

qemu-system-arm -M versatilepb -cpu arm1176 -kernel kernel-qemu-5.10.63-bullseye -dtb versatile-pb-bullseye-5.10.63.dtb \
-m 256 -drive file=~/Documents/yocto/poky/build/tmp/deploy/images/raspberrypi/core-image-minimal-raspberrypi.ext3,format=raw \
-append "root=/dev/sda" -net nic -net user -device virtio-rng-pci

