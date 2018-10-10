#!/bin/sh

appstream-builder				\
	--origin=majsterklepka-fedora-sources		\
	--basename=majsterklepka-fedora-sources			\
	--cache-dir=/tmp/asb-cache		\
	--enable-hidpi				\
	--max-threads=1				\
	--min-icon-size=32			\
	--output-dir=/tmp/asb-md		\
	--packages-dir=28/SRPMS/
