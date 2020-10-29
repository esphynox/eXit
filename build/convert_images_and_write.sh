if [ -z $1 ]; then
    echo "No arguments provided"
    exit 1
fi

path=$1

images=("img0" "img1" "img2" "img3" "img4" "img5" "img6" "img7" "img8")
for i in "${images[@]}"
do
  ../bin/tohgr ../images/png/${i}_280x192.png # convert png to hgr w/ `tohgr` tool
  mv ../images/png/${i}_280x192.hgr ../images/hgr/${i}.hgr # move .hgr file to "hgr" folder
  rm ../images/png/${i}_280x192_hgr.png # remove .png preview file
  applecommander -p ${path}/exit.dsk ${i}.HGR data < ../images/hgr/${i}.HGR; # put hgr to disk image
done