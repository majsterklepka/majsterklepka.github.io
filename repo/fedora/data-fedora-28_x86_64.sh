#!/bin/sh

modifyrepo_c					\
	--no-compress				\
	--simple-md-filenames			\
	/tmp/asb-md/majsterklepka-fedora.xml.gz		\
	28/x86_64/repodata/
modifyrepo_c					\
	--no-compress				\
	--simple-md-filenames			\
	/tmp/asb-md/majsterklepka-fedora-icons.tar.gz	\
	28/x86_64/repodata/
