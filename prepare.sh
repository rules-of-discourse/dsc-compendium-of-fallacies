
# Copyright (c) 2018 - Sophia Elizabeth Shapira
# This script is licensed under the terms of the GNU General
# Public License version 2.0 or later.


# Before we do anything else, we must make sure
# that we are in the repo's main directory.
cd "$(dirname "${0}")" || exit
repodir="$(pwd)"

sh prepare-image.sh
abrstate='pub'
if [ -f 'abrstate.flag' ]; then
  abrstate="$(cat abrstate.flag)"
  rm -rf abrstate.flag
fi


rm -rf Images
mkdir Images
cp CoverImage.jpg Images/.

rm -rf recipe.txt

echo "title:Discursive Compendium of Fallacies and Malconducts - $(cat tmpres/datetime-neat.txt)" > recipe.txt
echo "author:Sophia Elizabeth Shapira" >> recipe.txt
echo "publisher:Sophia Elizabeth Shapira" >> recipe.txt
echo "language:en" >> recipe.txt
echo "year:$(cat tmpres/year.txt)" >> recipe.txt
echo "date:$(cat tmpres/smdate.txt)" >> recipe.txt

perl res/multishow.pl 'css:' Styles/*.css >> recipe.txt

echo "cvimg:Images/CoverImage.jpg" >> recipe.txt

echo "ftext:Text/CoverPage.xhtml" >> recipe.txt
echo "text:Text/maintoc.xhtml" >> recipe.txt
echo "cont:1:top_of_page:Contents" >> recipe.txt
echo "text:Text/introduction.xhtml" >> recipe.txt
echo "cont:2:*:Introduction" >> recipe.txt
echo "text:Text/externalres.xhtml" >> recipe.txt
echo "cont:2:*:External Resources" >> recipe.txt

sh res/oneitem.sh flc "${abrstate}"
sh res/oneitem.sh cog "${abrstate}"
sh res/oneitem.sh mal "${abrstate}"
sh res/oneitem.sh bon "${abrstate}"
sh res/oneitem.sh bis "${abrstate}"
sh res/oneitem.sh apd "${abrstate}"


rm -rf *.epub
chobakepubtl build recipe.txt prep discursive-compendium
rm -rf *.mobi
kindlegen discursive-compendium.epub

echo
echo
epubcheck discursive-compendium.epub
echo


