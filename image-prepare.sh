


# Before we do anything else, we must make sure
# that we are in the repo's main directory.
cd "$(dirname "${0}")" || exit
repodir="$(pwd)"

rm -rf *.jpg *.png
xcf2png CoverImage.xcf -o CoverImage.png
convert CoverImage.png -gravity North -pointsize 120 -annotate +0+1800 "$(date +%Y-%m-%d)" CoverImage01.png
convert CoverImage01.png CoverImage.jpg


