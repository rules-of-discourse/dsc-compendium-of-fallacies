
repodir="$(dirname "$(cd "$(dirname "${0}")" && pwd)")"
thetexdir="${repodir}/Text"

cd "${thetexdir}" || exit



perl "${repodir}/res/prepfile.pl" \
  "${repodir}/res/pre/src--${1}.xhtml" \
  "${repodir}/recipe.txt" \
  "gnr--${1}.xhtml" \
  "Text/" \
"${1}"-*.xhtml




