![eXit](https://github.com/esphynox/eXit/raw/master/logo.png)

# eXit

A replica of a text quest game that appeared in S4E11 of Mr. Robot series. Basically, that's a copy of [existing web-version of "eXit"](https://www.whoismrrobot.com/exit/) but written completely in Applesoft BASIC to be natively ran on Apple ][ computers.

## Getting Started 

Ready to launch image here: ["exit_prodos_111.dsk"](https://github.com/esphynox/eXit/raw/master/disks/exit_prodos_111.dsk)

If you wan't to build this image by your own hands proceed to next section.

## Building

1. Install `libjpeg` & `libpng`
2. `cd build`
3. `sudo sh build_prodos_111.sh`
4. Grab your fresh `.dsk` image at `disks/exit_prodos_111.dsk` 

## Built With

### Simulator

- [microm8](https://paleotronic.com/software/microm8/) - Apple II Emulator for Windows, macOS / OSX and Linux

### Disk Manager

- [AppleCommander](https://applecommander.github.io) - a cross-platform set of tools used to manipulate Apple ][ disk images

### Tools 

- [tohgr](http://wsxyz.net/tohgr.html) - simple CLI tool to convert images in PNG, JPG, or XPM format to Apple II HGR image format  (uses `libjpeg` & `libpng`)
