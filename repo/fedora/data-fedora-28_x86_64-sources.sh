#!/bin/sh

modifyrepo_c					\
	--no-compress				\
	--simple-md-filenames			\
	/tmp/asb-md/majsterklepka-fedora-sources.xml.gz		\
	28/SRPMS/repodata/
modifyrepo_c					\
	--no-compress				\
	--simple-md-filenames			\
	/tmp/asb-md/majsterklepka-fedora-sources-icons.tar.gz	\
	28/SRPMS/repodata/
