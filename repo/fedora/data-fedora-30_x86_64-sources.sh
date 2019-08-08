#!/bin/sh

modifyrepo_c					\
	--no-compress				\
	--simple-md-filenames			\
	/tmp/asb-md/majsterklepka-fedora-sources-30.xml.gz		\
	30/SRPMS/repodata/
modifyrepo_c					\
	--simple-md-filenames			\
	/tmp/asb-md/majsterklepka-fedora-sources-30-icons.tar.gz	\
	30/SRPMS/repodata/
