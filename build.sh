cp empty.dsk exit.dsk # copy pre-existing .dsk image

./bin/tokenize_asoft < src/hello.bas > src/HELLO # compile `hello.bas` 
./bin/tokenize_asoft < src/exit.bas > src/EXIT # compile `exit.bas`
./bin/dos33 exit.dsk SAVE A src/HELLO # put `hello.bas` in `exit.dsk`
./bin/dos33 exit.dsk SAVE A src/EXIT # put `exit.bas` in `exit.dsk`

images=("img0" "img1" "img2" "img3" "img4" "img5" "img6" "img7" "img8")
for i in "${images[@]}"
do
  ./bin/tohgr images/png/${i}_280x192.png # convert png to hgr w/ `tohgr` tool
  mv `pwd`/images/png/${i}_280x192.hgr `pwd`/images/hgr/${i}.hgr # move .hgr file to "hgr" folder
  rm `pwd`/images/png/${i}_280x192_hgr.png # remove .png preview file
  applecommander -p exit.dsk ${i}.HGR data < images/hgr/${i}.HGR; # put hgr to disk image
done

# copy disk to microm8 folder
cp /Users/esphynox/Work/My/eXit/exit.dsk /Users/esphynox/microM8/MyDisks/exit.dsk;  