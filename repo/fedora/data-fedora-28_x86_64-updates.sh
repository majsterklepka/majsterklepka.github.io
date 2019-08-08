#!/bin/sh

modifyrepo_c					\
	--no-compress				\
	--simple-md-filenames			\
	/tmp/asb-md/majsterklepka-fedora-updates.xml.gz		\
	28/updates/repodata/
modifyrepo_c					\
	--simple-md-filenames			\
	/tmp/asb-md/majsterklepka-fedora-updates-icons.tar.gz	\
	28/updates/repodata/
