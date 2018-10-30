#!/bin/sh

createrepo --update 28/SRPMS
createrepo --update 28/updates
createrepo --update 28/x86_64

./appstream_fedora-28_86_64.sh

./appstream_fedora-28_86_64-updates.sh

./appstream_fedora-28_86_64-sources.sh

./data-fedora-28_x86_64.shu

./data-fedora-28_x86_64-updates.sh

./data-fedora-28_x86_64-sources.sh
