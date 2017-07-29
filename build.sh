#!/bin/bash -e

# variables
BRANCH="experimental"
VERSION="0.8.11.1"
BROKEN="1"
GLUONBRANCH="v2016.2.6"
TARGETS=ar71xx-generic,ar71xx-nand,brcm2708-bcm2708,brcm2708-bcm2709,mpc85xx-generic,x86-generic,x86-kvm_guest,x86-64,x86-xen_domu

# start time logging
before=$(date +%s)

# create output folder
mkdir -p log

# clean site and output folder
rm -rf site
rm -rf output
rm -rf site_ffwtbg

# download site config and deploy static config files
git clone https://github.com/ffwtbg/site.git -b $GLUONBRANCH site_ffwtbg
mkdir site
cp -R site_ffwtbg/site/* site/

#################
### Kernstadt ###
#################
# copy site config
cp site_ffwtbg/site-kernstadt/site.conf site/site.conf

# make update
echo "Running 'make update'"
make update &> log/mkupdate.log

# make
for TARGET in $(echo $TARGETS | sed "s/,/ /g")
do
    echo "$TARGET"
	make GLUON_TARGET=${TARGET} -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH
done

# create zip archive
tar cfzv /media/sdb1/html/kernstadt_${VERSION}_${BRANCH}.tar.gz output/images

# clean the folders
rm -rf output/*
rm -f site/site.conf

#################
###  Doerfer  ###
#################
# copy site config
cp site_ffwtbg/site-doerfer/site.conf site/site.conf

# make update
echo "Running 'make update'"
make update &> log/mkupdate.log

# make
for TARGET in $(echo $TARGETS | sed "s/,/ /g")
do
    echo "$TARGET"
	make GLUON_TARGET=${TARGET} -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH
done

# create zip archive
tar cfzv /media/sdb1/html/doerfer_${VERSION}_${BRANCH}.tar.gz output/images

# clean the folders
rm -rf output/*
rm -f site/site.conf

##################
###  Medebach  ###
##################
# copy site config
cp site_ffwtbg/site-medebach/site.conf site/site.conf

# make update
echo "Running 'make update'"
make update &> log/mkupdate.log

# make
for TARGET in $(echo $TARGETS | sed "s/,/ /g")
do
    echo "$TARGET"
	make GLUON_TARGET=${TARGET} -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH
done

# create zip archive
tar cfzv /media/sdb1/html/medebach_${VERSION}_${BRANCH}.tar.gz output/images

# clean the folders
rm -rf output/*
rm -f site/site.conf

##################
### Hallenberg ###
##################
# copy site config
cp site_ffwtbg/site-hallenberg/site.conf site/site.conf

# make update
echo "Running 'make update'"
make update &> log/mkupdate.log

# make
for TARGET in $(echo $TARGETS | sed "s/,/ /g")
do
    echo "$TARGET"
	make GLUON_TARGET=${TARGET} -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH
done

# create zip archive
tar cfzv /media/sdb1/html/hallenberg_${VERSION}_${BRANCH}.tar.gz output/images

# clean the folders
rm -rf output/*
rm -f site/site.conf

######################
### Siedlinghausen ###
######################
# copy site config
cp site_ffwtbg/site-sdlh/site.conf site/site.conf

# make update
echo "Running 'make update'"
make update &> log/mkupdate.log

# make
for TARGET in $(echo $TARGETS | sed "s/,/ /g")
do
    echo "$TARGET"
	make GLUON_TARGET=${TARGET} -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH
done

# create zip archive
tar cfzv /media/sdb1/html/siedlinghausen_${VERSION}_${BRANCH}.tar.gz output/images

# clean the folders
rm -rf output/*
rm -f site/site.conf

#####################
### Hoehendoerfer ###
#####################
# copy site config
cp site_ffwtbg/site-hoehendoerfer/site.conf site/site.conf

# make update
echo "Running 'make update'"
make update &> log/mkupdate.log

# make
for TARGET in $(echo $TARGETS | sed "s/,/ /g")
do
    echo "$TARGET"
	make GLUON_TARGET=${TARGET} -j12 BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH
done

# create zip archive
tar cfzv /media/sdb1/html/hoehendoerfer_${VERSION}_${BRANCH}.tar.gz output/images

# clean the folders
rm -rf output/*
rm -rf site/*

# end time logging
after=$(date +%s)
echo "elapsed time:" $(((after - $before)/60)) "minutes"