#!/bin/bash

for (( frame_num=41; frame_num<=561; frame_num+=0 ))
do
  title='birds_eye'
  folder_num=$((frame_num / 40))

  cp -R "$title" "${title}_${folder_num}"
  cd "${title}_${folder_num}"

  for frame in *.png; do
    new=$(printf "$title%04d.png" "$frame_num")
    mv -i -- "$frame" "$new"
    let frame_num=frame_num+1
  done

  cd ..
done

mv **/*.png "$title/"
