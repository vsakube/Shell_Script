
sudo apt-get install debootstrap

mkdir arm_chroot

sudo debootstrap --arch=arm64 focal arm_chroot http://ports.ubuntu.com/

sudo mount -t proc proc arm_chroot/proc
sudo mount -t sysfs sys arm_chroot/sys

sudo apt-get install qemu-user-static

sudo cp /usr/bin/qemu-arm-static arm_chroot/usr/bin/


apt-get update
apt-get install -y libc6:armhf

dpkg --install /path/to/your-package.deb
