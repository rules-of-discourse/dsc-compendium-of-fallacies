
# Copyright (c) 2018 - Sophia Elizabeth Shapira
# This script is licensed under the terms of the GNU General
# Public License version 2.0 or later.



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
convert CoverImage.png -gravity North -pointsize 170 -annotate +0+1650 "$(cat tmpres/smdate.txt)" CoverImage01.png
convert CoverImage01.png -gravity North -pointsize 170 -annotate +0+1900 "$(cat tmpres/justhour.txt)" CoverImage02.png
convert CoverImage02.png CoverImage.jpg


