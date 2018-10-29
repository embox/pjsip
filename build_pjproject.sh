#!/bin/sh

set -ve

BASE=$(readlink -f $(dirname $0))
PJPROJECT=pjproject-2.4
PJINSTALL=$PWD/pjinstall

rm -rf $PJPROJECT $PJINSTALL
tar -axf $BASE/$PJPROJECT.tar.bz2

cd $BASE/$PJPROJECT

	./configure \
		CFLAGS=-O0 \
		--prefix=/ \
		--disable-oss \
		--disable-opencore-amr \
		--disable-v4l2 \
		--disable-video \
		--disable-ffmpeg \
		--with-external-srtp

	cp $BASE/user.mak .
	cp $BASE/config_site.h pjlib/include/pj/config_site.h
	make dep
	make
	make DESTDIR=$PJINSTALL install

cd $BASE

