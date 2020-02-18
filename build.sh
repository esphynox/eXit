applecommander -dos140 exit.dsk; # create image disk with dosk image
cat exit.bas | applecommander -bas exit.dsk exit; # put 3d.bas in exit.dsk

images=("splash" "1-1" "1-2" "1-3" "1-4" "1-5" "1-6" "1-7" "2-1")
for i in "${images[@]}"
do
  ./png2hgr images/${i}_280x192_indexed.png > $i.hgr # convert png to hgr
  applecommander -p exit.dsk ${i}.HGR data < ${i}.HGR; # put hgr to disk image
done

# copy disk to microm8 folder
cp /Users/esphynox/Work/My/eXit/exit.dsk /Users/esphynox/microM8/MyDisks/exit.dsk;  