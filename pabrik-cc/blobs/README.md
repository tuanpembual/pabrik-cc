# bootx64.efi

```
sudo apt install grub-efi-amd64
grub-mkimage --format=x86_64-efi --output=bootx64.efi --config=grub-uefi.cfg --compression=xz --prefix=/EFI/BOOT search iso9660 configfile normal memdisk tar boot linux part_msdos part_gpt part_apple configfile help loadenv ls reboot chain search_fs_uuid multiboot fat iso9660 udf ext2 btrfs ntfs reiserfs xfs lvm ata appleldr gfxterm gfxmenu efi_gop efi_uga all_video loadbios font usb_keyboard
```

# bootx32.efi

```
sudo apt install grub-efi-i386
grub-mkimage --format=i386-efi --output=bootx32.efi --config=grub-uefi.cfg --compression=xz --prefix=/EFI/BOOT search iso9660 configfile normal memdisk tar boot linux part_msdos part_gpt part_apple configfile help loadenv ls reboot chain search_fs_uuid multiboot fat iso9660 udf ext2 btrfs ntfs reiserfs xfs lvm ata appleldr gfxterm gfxmenu efi_gop efi_uga all_video loadbios font usb_keyboard
```

# hybrid.img

```
sudo apt install grub-pc
cat /usr/lib/grub/i386-pc/boot_hybrid.img > hybrid.img 
```

# eltorito.img

```
grub-mkimage -p /boot -o core.img -O i386-pc biosdisk iso9660 linux configfile -c grub-pc.cfg
cat /usr/lib/grub/i386-pc/cdboot.img core.img > eltorito.img

```
