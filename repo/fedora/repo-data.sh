#!/bin/sh

echo 'Skrypt generuje repo data'

if [[ $# -ne 1 ]]; then
       echo 'Nie podałeś numeru wydania!';
       echo "Użycie: $0 numer wydania";
       exit;
fi   

appstream-builder				\
	--origin=majsterklepka-fedora		\
	--basename=majsterklepka-fedora-$1			\
	--cache-dir=/tmp/asb-cache		\
	--enable-hidpi				\
	--min-icon-size=32			\
	--output-dir=/tmp/asb-md		\
	--packages-dir=$1/x86_64/

appstream-builder				\
	--origin=majsterklepka-fedora-sources		\
	--basename=majsterklepka-fedora-sources-$1			\
	--cache-dir=/tmp/asb-cache		\
	--enable-hidpi				\
	--min-icon-size=32			\
	--output-dir=/tmp/asb-md		\
	--packages-dir=$1/SRPMS/

appstream-builder				\
	--origin=majsterklepka-fedora-updates		\
	--basename=majsterklepka-fedora-updates-$1			\
	--cache-dir=/tmp/asb-cache		\
	--enable-hidpi				\
	--min-icon-size=32			\
	--output-dir=/tmp/asb-md		\
	--packages-dir=$1/updates/


modifyrepo_c					\
	--no-compress				\
	--simple-md-filenames			\
	/tmp/asb-md/majsterklepka-fedora-$1.xml.gz		\
	$1/x86_64/repodata/

modifyrepo_c					\
	--simple-md-filenames			\
	/tmp/asb-md/majsterklepka-fedora-$1-icons.tar.gz	\
	$1/x86_64/repodata/

modifyrepo_c					\
	--no-compress				\
	--simple-md-filenames			\
	/tmp/asb-md/majsterklepka-fedora-sources-$1.xml.gz		\
	$1/SRPMS/repodata/


modifyrepo_c					\
	--simple-md-filenames			\
	/tmp/asb-md/majsterklepka-fedora-sources-$1-icons.tar.gz	\
	$1/SRPMS/repodata/

modifyrepo_c					\
	--no-compress				\
	--simple-md-filenames			\
	/tmp/asb-md/majsterklepka-fedora-updates-$1.xml.gz		\
	$1/updates/repodata/

modifyrepo_c					\
	--simple-md-filenames			\
	/tmp/asb-md/majsterklepka-fedora-updates-$1-icons.tar.gz	\
	$1/updates/repodata/

rm -fr tmp/
