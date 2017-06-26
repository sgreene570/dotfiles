#!/bin/sh

echo "Press Volume Up Key"
echo "\"amixer -q sset Master 3%+\"" >> ~/.xbindkeysrc
echo "$(xbindkeys -k | tail -1)" >> ~/.xbindkeysrc

echo "Press Volume Down Key"
echo "\"amixer -q sset Master 3%-\"" >> ~/.xbindkeysrc
echo "$(xbindkeys -k | tail -1)" >> ~/.xbindkeysrc

echo "Press Brightness Up Key"
echo "\"xbacklight -inc 5\"" >> ~/.xbindkeysrc
echo "$(xbindkeys -k | tail -1)" >> ~/.xbindkeysrc

echo "Press Brightness Down Key"
echo "\"xbacklight -dec 5\"" >> ~/.xbindkeysrc
echo "$(xbindkeys -k | tail -1)" >> ~/.xbindkeysrc

