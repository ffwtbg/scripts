#!/bin/bash -e

# variables
BRANCH="experimental"
VERSION="0.8.11"
BROKEN="1"
GLUONBRANCH="v2016.2.6"

# create output folder
mkdir -p log

# clean site and output folder
rm -rf site
rm -rf output
rm -rf site_ffwtbg

# download site config
git clone https://github.com/ffwtbg/site.git -b $GLUONBRANCH site_ffwtbg

# create site folder
mkdir site

#################
### Kernstadt ###
#################
# copy site config
cp -R site_ffwtbg/site-kernstadt/* site/

# make update
echo "Running 'make update'"
make update &> log/mkupdate.log

# make
echo "Running 'make' ar71xx-generic"
make GLUON_TARGET=ar71xx-generic -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' ar71xx-nand"
make GLUON_TARGET=ar71xx-nand -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' brcm2708-bcm2708"
make GLUON_TARGET=brcm2708-bcm2708 -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' brcm2708-bcm2709"
make GLUON_TARGET=brcm2708-bcm2709 -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' mpc85xx-generic"
make GLUON_TARGET=mpc85xx-generic -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-generic"
make GLUON_TARGET=x86-generic -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-kvm_guest"
make GLUON_TARGET=x86-kvm_guest -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-64"
make GLUON_TARGET=x86-64 -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-xen_domu"
make GLUON_TARGET=x86-xen_domu -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

# create zip archive
tar cfzv /media/sdb1/html/kernstadt_${VERSION}_${BRANCH}.tar.gz output/images

# clean the folders
rm -rf output/*
rm -rf site

#################
###  Doerfer  ###
#################
# copy site config
cp -R site_ffwtbg/site-doerfer/* site/

# make update
echo "Running 'make update'"
make update &> log/mkupdate.log

# make
echo "Running 'make' ar71xx-generic"
make GLUON_TARGET=ar71xx-generic -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' ar71xx-nand"
make GLUON_TARGET=ar71xx-nand -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' brcm2708-bcm2708"
make GLUON_TARGET=brcm2708-bcm2708 -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' brcm2708-bcm2709"
make GLUON_TARGET=brcm2708-bcm2709 -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' mpc85xx-generic"
make GLUON_TARGET=mpc85xx-generic -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-generic"
make GLUON_TARGET=x86-generic -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-kvm_guest"
make GLUON_TARGET=x86-kvm_guest -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-64"
make GLUON_TARGET=x86-64 -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-xen_domu"
make GLUON_TARGET=x86-xen_domu -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

# create zip archive
tar cfzv /media/sdb1/html/doerfer_${VERSION}_${BRANCH}.tar.gz output/images

# clean the folders
rm -rf output/*
rm -rf site

##################
###  Medebach  ###
##################
# copy site config
cp -R site_ffwtbg/site-medebach/* site/

# make update
echo "Running 'make update'"
make update &> log/mkupdate.log

# make
echo "Running 'make' ar71xx-generic"
make GLUON_TARGET=ar71xx-generic -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' ar71xx-nand"
make GLUON_TARGET=ar71xx-nand -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' brcm2708-bcm2708"
make GLUON_TARGET=brcm2708-bcm2708 -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' brcm2708-bcm2709"
make GLUON_TARGET=brcm2708-bcm2709 -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' mpc85xx-generic"
make GLUON_TARGET=mpc85xx-generic -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-generic"
make GLUON_TARGET=x86-generic -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-kvm_guest"
make GLUON_TARGET=x86-kvm_guest -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-64"
make GLUON_TARGET=x86-64 -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-xen_domu"
make GLUON_TARGET=x86-xen_domu -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

# create zip archive
tar cfzv /media/sdb1/html/medebach_${VERSION}_${BRANCH}.tar.gz output/images

# clean the folders
rm -rf output/*
rm -rf site

##################
### Hallenberg ###
##################
# copy site config
cp -R site_ffwtbg/site-hallenberg/* site/

# make update
echo "Running 'make update'"
make update &> log/mkupdate.log

# make
echo "Running 'make' ar71xx-generic"
make GLUON_TARGET=ar71xx-generic -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' ar71xx-nand"
make GLUON_TARGET=ar71xx-nand -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' brcm2708-bcm2708"
make GLUON_TARGET=brcm2708-bcm2708 -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' brcm2708-bcm2709"
make GLUON_TARGET=brcm2708-bcm2709 -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' mpc85xx-generic"
make GLUON_TARGET=mpc85xx-generic -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-generic"
make GLUON_TARGET=x86-generic -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-kvm_guest"
make GLUON_TARGET=x86-kvm_guest -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-64"
make GLUON_TARGET=x86-64 -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-xen_domu"
make GLUON_TARGET=x86-xen_domu -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

# create zip archive
tar cfzv /media/sdb1/html/hallenberg_${VERSION}_${BRANCH}.tar.gz output/images

# clean the folders
rm -rf output/*
rm -rf site

######################
### Siedlinghausen ###
######################
# copy site config
cp -R site_ffwtbg/site-sdlh/* site/

# make update
echo "Running 'make update'"
make update &> log/mkupdate.log

# make
echo "Running 'make' ar71xx-generic"
make GLUON_TARGET=ar71xx-generic -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' ar71xx-nand"
make GLUON_TARGET=ar71xx-nand -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' brcm2708-bcm2708"
make GLUON_TARGET=brcm2708-bcm2708 -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' brcm2708-bcm2709"
make GLUON_TARGET=brcm2708-bcm2709 -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' mpc85xx-generic"
make GLUON_TARGET=mpc85xx-generic -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-generic"
make GLUON_TARGET=x86-generic -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-kvm_guest"
make GLUON_TARGET=x86-kvm_guest -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-64"
make GLUON_TARGET=x86-64 -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-xen_domu"
make GLUON_TARGET=x86-xen_domu -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

# create zip archive
tar cfzv /media/sdb1/html/siedlinghausen_${VERSION}_${BRANCH}.tar.gz output/images

# clean the folders
rm -rf output/*
rm -rf site

#####################
### Hoehendoerfer ###
#####################
# copy site config
cp -R site_ffwtbg/site-hoehendoerfer/* site/

# make update
echo "Running 'make update'"
make update &> log/mkupdate.log

# make
echo "Running 'make' ar71xx-generic"
make GLUON_TARGET=ar71xx-generic -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' ar71xx-nand"
make GLUON_TARGET=ar71xx-nand -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' brcm2708-bcm2708"
make GLUON_TARGET=brcm2708-bcm2708 -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' brcm2708-bcm2709"
make GLUON_TARGET=brcm2708-bcm2709 -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' mpc85xx-generic"
make GLUON_TARGET=mpc85xx-generic -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-generic"
make GLUON_TARGET=x86-generic -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-kvm_guest"
make GLUON_TARGET=x86-kvm_guest -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-64"
make GLUON_TARGET=x86-64 -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

echo "Running 'make' x86-xen_domu"
make GLUON_TARGET=x86-xen_domu -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH

# create zip archive
tar cfzv /media/sdb1/html/hoehendoerfer_${VERSION}_${BRANCH}.tar.gz output/images

# clean the folders
rm -rf output/*
rm -rf site
