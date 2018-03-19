
cd "$(dirname "${0}")" || exit
echo full > abrstate.flag
exec sh prepare.sh

