

# Before we do anything else, we must make sure
# that we are in the repo's main directory.
cd "$(dirname "${0}")" || exit
repodir="$(pwd)"

( cd Text && (

perl "${repodir}/res/prepfile.pl" \
  -m "${repodir}/res/src--flc.xhtml" \
  -fx flc-*.xhtml
> gnr--flc.xhtml

) )

