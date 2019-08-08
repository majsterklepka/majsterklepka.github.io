#!/bin/sh

modifyrepo_c					\
	--no-compress				\
	--simple-md-filenames			\
	/tmp/asb-md/majsterklepka-fedora-30.xml.gz		\
	30/x86_64/repodata/
modifyrepo_c					\
	--simple-md-filenames			\
	/tmp/asb-md/majsterklepka-fedora-30-icons.tar.gz	\
	30/x86_64/repodata/
