

# Before we do anything else, we must make sure
# that we are in the repo's main directory.
cd "$(dirname "${0}")" || exit
repodir="$(pwd)"

rm -rf tmpres
mkdir tmpres
perl res/perlsplit.pl \
"$(date '+%Y-%m-%d - %-I:%M%P::%Y-%m-%d-%H%M::%Y::%Y-%m-%d::%-I:%M%P')" \
'::' \
tmpres/datetime-neat.txt tmpres/datetime-cyber.txt \
tmpres/year.txt tmpres/smdate.txt \
tmpres/justhour.txt






rm -rf *.jpg *.png
xcf2png CoverImage.xcf -o CoverImage.png
convert CoverImage.png -gravity North -pointsize 120 -annotate +0+1700 "$(cat tmpres/smdate.txt)" CoverImage01.png
convert CoverImage01.png -gravity North -pointsize 120 -annotate +0+1900 "$(cat tmpres/justhour.txt)" CoverImage02.png
convert CoverImage02.png CoverImage.jpg




rm -rf Images
mkdir Images
cp CoverImage.jpg Images/.

rm -rf recipe.txt

echo "title:Discursive Compendium of Fallacies - $(cat tmpres/datetime-neat.txt)" > recipe.txt
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

sh res/oneitem.sh flc
sh res/oneitem.sh cog
sh res/oneitem.sh mal
sh res/oneitem.sh bon


chobakepubtl build recipe.txt prep discursive-compendium
rm -rf *.mobi
kindlegen discursive-compendium.epub



