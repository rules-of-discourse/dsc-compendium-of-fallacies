
cd "$(dirname "${0}")" || exit
echo dev > abrstate.flag
exec sh prepare.sh

