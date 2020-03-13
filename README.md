# eXit

A replica of a small quest game that appeared in S4E11 of Mr. Robot series. Basically, that's a copy of [this resource](https://www.whoismrrobot.com/exit/) but written completely in Applesoft BASIC to have capability launched on Apple II+ computers.

## Getting Started 

This repository contains Applesoft BASIC sources if you wan't build this on your own or two disk images.

- `disks/dos/eXit.dsk` - Dos33 version
- `disks/prodos/eXit.do` - version with bundled ProDOS 1.1.1

## Building

1. Install `libjpeg` & `libpng`
3. Run `build.sh`
4. Grab your `.dsk` image at `disks/dos/eXit.dsk` 

## Known issues 

- Running `.dsk` Dos33 disk image as startup image won't run main program because of some HGR images take too much resources. You need to manually run `HELLO` program.
- Build phase updates only Dos33 version of image, so you manually need to update ProDOS `.po` disk image. I'm using [CiderPress](#disk-managers) for this purposes because for some reasons I wasn't able to do this with [AppleCommander](#disk-managers).

## Built With

### Simulator

- [microm8](https://paleotronic.com/software/microm8/) - Apple II Emulator for Windows, macOS / OSX and Linux

### Disk Managers

- [AppleCommander](https://applecommander.github.io) - a cross-platform set of tools used to manipulate Apple ][ disk images
- [CiderPress](https://a2ciderpress.com) - provides the features that Apple II enthusiasts need to manage their disk and file archives.

### Tools 

- [dos33](https://github.com/deater/dos33fsprogs/tree/master/dos33fs-utils) - a tool for manipulating dos33 `.dsk` images
- [tohgr](http://wsxyz.net/tohgr.html) - very simple command line program to convert images in PNG, JPG, or XPM format to Apple II images (uses `libjpeg` & `libpng`)
- [tokenize_asoft](https://github.com/deater/dos33fsprogs/tree/master/asoft_basic-utils) - takes an ASCII text file and converts it into a tokenized Applesoft file

## Acknowledgments

[@deater](https://github.com/deater) - huge thanks for decent toolset, impressive examples and inspiration

## License

WIP
