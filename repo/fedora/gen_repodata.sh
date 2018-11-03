#!/bin/sh

createrepo --update 28/SRPMS
createrepo --update 28/updates
createrepo --update 28/x86_64

createrepo --update 29/SRPMS
createrepo --update 29/updates
createrepo --update 29/x86_64

createrepo --update 30/SRPMS
createrepo --update 30/updates
createrepo --update 30/x86_64

./appstream_fedora-28_86_64.sh
./appstream_fedora-28_86_64-updates.sh
./appstream_fedora-28_86_64-sources.sh
./data-fedora-28_x86_64.sh
./data-fedora-28_x86_64-updates.sh
./data-fedora-28_x86_64-sources.sh


./appstream_fedora-29_86_64.sh
./appstream_fedora-29_86_64-updates.sh
./appstream_fedora-29_86_64-sources.sh
./data-fedora-29_x86_64.sh
./data-fedora-29_x86_64-updates.sh
./data-fedora-29_x86_64-sources.sh

./appstream_fedora-30_86_64.sh
./appstream_fedora-30_86_64-updates.sh
./appstream_fedora-30_86_64-sources.sh
./data-fedora-30_x86_64.sh
./data-fedora-30_x86_64-updates.sh
./data-fedora-30_x86_64-sources.sh
