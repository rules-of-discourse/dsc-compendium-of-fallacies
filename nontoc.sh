
# Copyright (c) 2018 - Sophia Elizabeth Shapira
# This script is licensed under the terms of the GNU General
# Public License version 2.0 or later.


# This script you run if you want to generate an EPUB file
# that is missing the 'toc.ncx' resource. If you do that,
# you will need to use another program (such as Sigil)
# to do the finishing touches on the EPUB.
#
# Once upon a time, before the feature of _chobakepubtl_
# that allowed generating the 'toc.ncx' was complete, there
# was a good reason to do this. Now, however, I can not think
# of any reason why you would want to generate such an
# incomplete EPUB, but this option remains because I saw
# no pressing reason to take it away.

# Before we do anything else, we must make sure
# that we are in the repo's main directory.
cd "$(dirname "${0}")" || exit
repodir="$(pwd)"

sh prepare.sh

echo '### NOW BUILDING AGAIN - WITHOUT THE TOC ###'

echo "buildtoc:off" >> recipe.txt


rm -rf discursive-compendium.epub
chobakepubtl build recipe.txt prep discursive-compendium


