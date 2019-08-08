#!/bin/sh

modifyrepo_c					\
	--no-compress				\
	--simple-md-filenames			\
	/tmp/asb-md/majsterklepka-fedora-sources-29.xml.gz		\
	29/SRPMS/repodata/
modifyrepo_c					\
	--simple-md-filenames			\
	/tmp/asb-md/majsterklepka-fedora-sources-29-icons.tar.gz	\
	29/SRPMS/repodata/
