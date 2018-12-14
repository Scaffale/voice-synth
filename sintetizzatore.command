#! /bin/bash
echo "REQUIRED: ffmpeg, Luca's voice osx"
echo "Leggo e sintetizzo i file";

for file in *.toread; do
  echo "Converto $file";
  currentFile=$(<"$file");
  say -v Luca -o "$file.aiff" "$currentFile";
  ffmpeg -i "$file.aiff" -loglevel panic -y "$file.mp3";
  rm -f "$file.aiff";
done
echo "FINE";