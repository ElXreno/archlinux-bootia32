#!/bin/bash
FSLABEL='ARCH_201905'

echo 'mkdir'

mkdir out

echo 'sed'

sed -i -e "s/<FS-LABEL>/${FSLABEL}/g" grub.cfg

echo 'make'

grub-mkstandalone -d /usr/lib/grub/i386-efi/ -O i386-efi --modules="part_gpt part_msdos" --fonts="unicode" --locales="uk" --themes="" -o "out/bootia32.efi" "boot/grub/grub.cfg=grub.cfg" -v
