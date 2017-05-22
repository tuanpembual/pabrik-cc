# PABRIK CD

## Install perkakas
`$ sudo apt-get install git debootstrap genisoimage zsync reprepro xorriso postfix mailutils`

## Setup GNUPG

## Menghajar Pabrik
* Buat User CDIMAGE  
`$ sudo adduser cdimage`

* Ubah CDIMAGE menjadi sudoers  
`$ sudo visudo -f /etc/sudoers`  
Tambahkan di baris terakhir dan simpan  
`cdimage ALL=NOPASSWD: ALL`

* Masuk Ke CDIMAGE  
`$ sudo su – cdimage`

* Menarik Skrip Pabrik CD  
`$ git clone https://github.com/tuanpembual/pabrik-cc.git`  
`$ git checkout uluwatu`  

* Ubah suai config pabrik  
`$ vim uluwatu.config`

* Mengatur debootstrap uluwatu  
`$ vim uluwatu.debootstrap`  
`$ sudo cp uluwatu.debootstrap /usr/share/debootstrap/scripts/uluwatu`

* Mengatur lokasi cd image  
`$ mkdir /home/cdimage/images/livedvd-harian/`

## Membuat Cetakan CD
`$ ./enter-cd-blankon.sh`

## Selamat Menikmati Error dan Baca Log

## Keluar dari Chroot
`$ sudo umount /path/to/pabrikcd/pabrik-cc-github/tmp/20170521-rootfs-amd64/sys`  
`$ sudo umount /path/to/pabrikcd/pabrik-cc-github/tmp/20170521-rootfs-amd64/proc`  
`$ sudo umount /path/to/pabrikcd/pabrik-cc-github/tmp/20170521-rootfs-amd64/dev/pts`

## Rilis
`$ sudo ./release-image -d /home/cdimage/images/livecd-harian/$DATE/ -r 11.0 -p /home/cdimage/images/rilis/uluwatu/Jahitan-XX/`
