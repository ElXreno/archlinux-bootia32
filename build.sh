#!/bin/bash
FSLABEL='ARCH_201901'

mkdir out

sed -i -e "s/<FS-LABEL>/${FSLABEL}/g" grub.cfg

grub-mkstandalone -d /usr/lib/grub/i386-efi/ -O i386-efi --modules="part_gpt part_msdos" --fonts="unicode" --locales="uk" --themes="" -o "out/bootia32.efi" "boot/grub/grub.cfg=grub.cfg" -v
