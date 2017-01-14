sk to startx
if [[ -z $DISPLAY && $XDG_VTNR -le 12 ]];
then
echo "would you like to start X? (y/n)"
while true; do
read REPLY
case $REPLY in
    [Yy]) exec startx ;;
    [Nn]) break ;;
    *) exec startx ;;
esac
done
fi
