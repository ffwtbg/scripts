#!/bin/bash -e

# variables
VERSION="0.9"
BROKEN="1"
GLUONBRANCH="v2018.1"
GLUONRELEASE="0.9"
TARGETS=ar71xx-generic,ar71xx-tiny,ar71xx-nand,brcm2708-bcm2708,brcm2708-bcm2709,mpc85xx-generic,ramips-mt7621,sunxi,x86-generic,x86-geode,x86-64,ipq806x,ramips-mt7620,ramips-mt7628,ramips-rt305x
CPUCount="40"
OutputDir="/media/sdb1/html"

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

#####################################################################
# set Firmware Branch
BRANCH="experimental"

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
	make GLUON_TARGET=${TARGET} -j${CPUCount} BROKEN=${BROKEN} GLUON_BRANCH=$BRANCH GLUON_RELEASE=$GLUONRELEASE
done

# sign firmware
make manifest GLUON_BRANCH=${BRANCH}
./contrib/sign.sh ~/key.secret output/images/sysupgrade/${BRANCH}.manifest

# create zip archive
tar cfzv ${OutputDir}/kernstadt_${VERSION}_${BRANCH}.tar.gz output/images

# clean the folders
rm -rf output/*
rm -f site/site.conf

###########################################################################################

# end time logging
after=$(date +%s)
echo "elapsed time:" $(((after - $before)/60)) "minutes"