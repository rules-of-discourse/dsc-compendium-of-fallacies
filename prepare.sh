

# Before we do anything else, we must make sure
# that we are in the repo's main directory.
cd "$(dirname "${0}")" || exit
repodir="$(pwd)"

rm -rf *.jpg *.png
xcf2png CoverImage.xcf -o CoverImage.png
convert CoverImage.png CoverImage.jpg

( cd Text && (

perl "${repodir}/res/prepfile.pl" \
  -m "${repodir}/res/src--flc.xhtml" \
  -rcp "${repodir}/recipe.txt" \
  -fx flc-*.xhtml
> gnr--flc.xhtml

perl "${repodir}/res/prepfile.pl" \
  -m "${repodir}/res/src--cog.xhtml" \
  -rcp "${repodir}/recipe.txt" \
  -fx cog-*.xhtml
> gnr--cog.xhtml

perl "${repodir}/res/prepfile.pl" \
  -m "${repodir}/res/src--mal.xhtml" \
  -fx mal-*.xhtml
> gnr--mal.xhtml

perl "${repodir}/res/prepfile.pl" \
  -m "${repodir}/res/src--bon.xhtml" \
  -fx bon-*.xhtml
> gnr--bon.xhtml

) )

