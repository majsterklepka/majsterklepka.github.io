#!/bin/sh

appstream-builder				\
	--origin=majsterklepka-fedora		\
	--basename=majsterklepka-fedora			\
	--cache-dir=/tmp/asb-cache		\
	--enable-hidpi				\
	--min-icon-size=32			\
	--output-dir=/tmp/asb-md		\
	--packages-dir=28/x86_64/
