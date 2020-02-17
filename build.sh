applecommander -dos140 exit.dsk; # create image disk with dosk image
cat exit.bas | applecommander -bas exit.dsk exit; # put 3d.bas in exit.dsk

# convert images
./png2hgr images/splash_280x192_indexed.png > splash.hgr
./png2hgr images/1-1_280x192_indexed.png > 1-1.hgr

# put images in disk image
applecommander -p exit.dsk SPLASH.BIN data < SPLASH.BIN;
applecommander -p exit.dsk SPLASH.HGR data < SPLASH.HGR;
applecommander -p exit.dsk 1-1.HGR data < 1-1.HGR;

# copy disk to microm8 folder
cp /Users/esphynox/Work/My/eXit/exit.dsk /Users/esphynox/microM8/MyDisks/exit.dsk;  