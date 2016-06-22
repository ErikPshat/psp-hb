mkdir _release
mkdir _release/RECOVERY
mkdir _release/Pandora
mkdir _release/FW1.50
mkdir _release/FW1.50/__SCE__rflash
mkdir _release/FW1.50/%__SCE__rflash
rm _release/RECOVERY/EBOOT.PBP
rm _release/Pandora/rflash.elf
rm _release/Pandora/resurrection.prx
rm _release/FW1.50/__SCE__rflash/EBOOT.PBP
rm _release/FW1.50/__SCE__rflash/RFLASH.DAT
rm _release/FW1.50/%__SCE__rflash/EBOOT.PBP

cd helper
make clean
make
cp khelper.prx ../myPSAR/files
cd ..

cd ddclaunch
make clean
make
cp EBOOT.PBP ../myPSAR/files/ddclaunch.pbp
cd ..

cd myPSAR
./run.sh
mv DATA.PSAR ..
cd ..

make clean
cp Makefile.elf Makefile
make
psp-strip rflash.elf
cp rflash.elf _release/Pandora
cp README-Pandora.txt _release/Pandora

make clean
cp Makefile.EBOOT150 Makefile
make
make kxploit
cp rflash/EBOOT.PBP _release/FW1.50/__SCE__rflash
cp rflash%/EBOOT.PBP _release/FW1.50/%__SCE__rflash
rm -R rflash
rm -R rflash%

make clean
cp Makefile.EBOOT Makefile

make
cp EBOOT.PBP _release/RECOVERY
cp EBOOT.PBP _release/FW1.50/__SCE__rflash/RFLASH.DAT
cp rflash.prx _release/Pandora/resurrection.prx
cp README.TXT _release
cp FASTLZ.TXT _release
