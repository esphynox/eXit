applecommander -dos140 exit.dsk; # create image disk with dosk image
cat exit.bas | applecommander -bas exit.dsk exit; # put 3d.bas in exit.dsk

# convert images
./png2hgr images/splash_280x192_indexed.png > splash.hgr
./png2hgr images/1-1_280x192_indexed.png > 1-1.hgr
./png2hgr images/1-2_280x192_indexed.png > 1-2.hgr
./png2hgr images/1-3_280x192_indexed.png > 1-3.hgr
./png2hgr images/1-4_280x192_indexed.png > 1-4.hgr
./png2hgr images/1-5_280x192_indexed.png > 1-5.hgr
./png2hgr images/1-6_280x192_indexed.png > 1-6.hgr
./png2hgr images/1-7_280x192_indexed.png > 1-7.hgr
./png2hgr images/2-1_280x192_indexed.png > 2-1.hgr

# put images in disk image
applecommander -p exit.dsk SPLASH.HGR data < SPLASH.HGR;
applecommander -p exit.dsk 1-1.HGR data < 1-1.HGR;
applecommander -p exit.dsk 1-2.HGR data < 1-2.HGR;
applecommander -p exit.dsk 1-3.HGR data < 1-3.HGR;
applecommander -p exit.dsk 1-4.HGR data < 1-4.HGR;
applecommander -p exit.dsk 1-5.HGR data < 1-5.HGR;
applecommander -p exit.dsk 1-6.HGR data < 1-6.HGR;
applecommander -p exit.dsk 1-7.HGR data < 1-7.HGR;
applecommander -p exit.dsk 2-1.HGR data < 2-1.HGR;

# copy disk to microm8 folder
cp /Users/esphynox/Work/My/eXit/exit.dsk /Users/esphynox/microM8/MyDisks/exit.dsk;  