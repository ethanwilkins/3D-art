#!/bin/bash

for (( frame_num=41; frame_num<=81; frame_num+=40 ))
do
  i=$((frame_num / 40))
  cp -R birds_eye "birds_eye_$i"

  cd "birds_eye_$i"

  for frame in *.png; do
    new=$(printf "birds_eye%04d.png" "$frame_num")
    mv -i -- "$frame" "$new"
    let frame_num=frame_num+1
  done

  cd ..
done