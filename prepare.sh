

# Before we do anything else, we must make sure
# that we are in the repo's main directory.
cd "$(dirname "${0}")" || exit
repodir="$(pwd)"

rm -rf *.jpg *.png
xcf2png CoverImage.xcf -o CoverImage.png
convert CoverImage.png CoverImage.jpg

rm -rf recipe.txt

echo "title:Discursive Compendium of Fallacies" > recipe.txt
echo "author:Sophia Elizabeth Shapira" >> recipe.txt
echo "publisher:Sophia Elizabeth Shapira" >> recipe.txt
echo "language:en" >> recipe.txt
echo "year:$(date +%Y)" >> recipe.txt

sh res/oneitem.sh flc
sh res/oneitem.sh cog
sh res/oneitem.sh mal
sh res/oneitem.sh bon



