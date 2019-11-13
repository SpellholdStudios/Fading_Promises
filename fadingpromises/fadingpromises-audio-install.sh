#!/bin/sh

ogg_files="baidan01.ogg baidan02.ogg baidan03.ogg baidan04.ogg baidan05.ogg baidan06.ogg baidan07.ogg baidan08.ogg baidan09.ogg baidan10.ogg baidan11.ogg baidan12.ogg baidan13.ogg baidan14.ogg baidan15.ogg baidan16.ogg baidan17.ogg baidan18.ogg baidan19.ogg baidan20.ogg baidan21.ogg baidan22.ogg"

for file in $ogg_files; do
  echo Converting $file
  fadingpromises/sox fadingpromises/audio/$file override/${file%.ogg}.wav
done
