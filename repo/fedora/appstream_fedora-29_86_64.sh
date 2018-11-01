#!/bin/sh

appstream-builder				\
	--origin=majsterklepka-fedora		\
	--basename=majsterklepka-fedora-29			\
	--cache-dir=/tmp/asb-cache		\
	--enable-hidpi				\
	--max-threads=1				\
	--min-icon-size=32			\
	--output-dir=/tmp/asb-md		\
	--packages-dir=29/x86_64/
