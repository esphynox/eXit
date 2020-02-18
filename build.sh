applecommander -dos140 exit.dsk; # create image disk with dosk image
cat exit.bas | applecommander -bas exit.dsk exit; # put exit.bas in exit.dsk

images=("splash" "1-1" "1-2" "1-3" "1-4" "1-5" "1-6" "1-7" "2-1")
for i in "${images[@]}"
do
  ./tohgr images/png/${i}_280x192.png # convert png to hgr w/ `tohgr` tool
  mv `pwd`/images/png/${i}_280x192.hgr `pwd`/images/hgr/${i}.hgr # move .hgr file to "hgr" folder
  rm `pwd`/images/png/${i}_280x192_hgr.png # remove .png preview file
  applecommander -p exit.dsk ${i}.HGR data < images/hgr/${i}.HGR; # put hgr to disk image
done

# copy disk to microm8 folder
cp /Users/esphynox/Work/My/eXit/exit.dsk /Users/esphynox/microM8/MyDisks/exit.dsk;  