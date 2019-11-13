#!/bin/sh

wav_files="baidan01.wav baidan02.wav baidan03.wav baidan04.wav baidan05.wav baidan06.wav baidan07.wav baidan08.wav baidan09.wav baidan10.wav baidan11.wav baidan12.wav baidan13.wav baidan14.wav baidan15.wav baidan16.wav baidan17.wav baidan18.wav baidan19.wav baidan20.wav baidan21.wav baidan22.wav"

for file in $wav_files; do
  rm override/$file
done
