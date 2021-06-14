# archlinux-bootia32 [![build](https://github.com/ElXreno/archlinux-bootia32/actions/workflows/build.yml/badge.svg)](https://github.com/ElXreno/archlinux-bootia32/actions/workflows/build.yml)
bootia32.efi for ArchLinux 

# Usage:
Create new partition on your USB disk (if it doesn't have partition):

    sudo gdisk <DEV-TARGET>
    
Make partprobe:

    sudo partprobe
    
Format new partition on your USB disk:
    
    sudo mkfs.vfat -F 32 -n <FS-LABEL> <DEV-TARGET-N>
    
Mount partition:

    sudo mount <DEV-TARGET-N> <MNT-TARGET-N>
    
Extract original Arch Linux ISO to your USB disk:

    bsdtar -x --exclude=isolinux/ --exclude=EFI/archiso/ --exclude=arch/boot/syslinux/ -f <ISO-SOURCE> -C <MNT-TARGET-N>
    
Copy bootia32.efi to the USB disk:

    cp /LOCATION/OF/bootia32.efi <MNT-TARGET-N>/EFI/boot/bootia32.efi
    
Unmount partition:

    sudo unmount <MNT-TARGET-N>
    
Done! 
