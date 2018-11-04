#!/bin/sh

appstream-builder				\
	--origin=majsterklepka-fedora-sources		\
	--basename=majsterklepka-fedora-sources-30			\
	--cache-dir=/tmp/asb-cache		\
	--enable-hidpi				\
	--min-icon-size=32			\
	--output-dir=/tmp/asb-md		\
	--packages-dir=30/SRPMS/