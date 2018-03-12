
# Copyright (c) 2018 - Sophia Elizabeth Shapira
# This script is licensed under the terms of the GNU General
# Public License version 2.0 or later.


repodir="$(dirname "$(cd "$(dirname "${0}")" && pwd)")"
thetexdir="${repodir}/Text"

cd "${thetexdir}" || exit



perl "${repodir}/res/prepfile.pl" \
  "${repodir}/res/pre/src--${1}.xhtml" \
  "${repodir}/recipe.txt" \
  "gnr--${1}.xhtml" \
  "Text/" \
"${1}"-*.xhtml




