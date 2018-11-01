#!/bin/sh

appstream-builder				\
	--origin=majsterklepka-fedora-updates		\
	--basename=majsterklepka-fedora-updates-29			\
	--cache-dir=/tmp/asb-cache		\
	--enable-hidpi				\
	--max-threads=1				\
	--min-icon-size=32			\
	--output-dir=/tmp/asb-md		\
	--packages-dir=29/updates/
