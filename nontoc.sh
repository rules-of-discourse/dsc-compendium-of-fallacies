

# Before we do anything else, we must make sure
# that we are in the repo's main directory.
cd "$(dirname "${0}")" || exit
repodir="$(pwd)"

sh prepare.sh

echo '### NOW BUILDING AGAIN - WITHOUT THE TOC ###'

echo "buildtoc:off" >> recipe.txt


rm -rf discursive-compendium.epub
chobakepubtl build recipe.txt prep discursive-compendium


