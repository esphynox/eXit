path="../disks/dos"

sh code_tokenize_and_write.sh $path
sh convert_images_and_write.sh $path

# copy disk to microm8 folder
cp ${path}/exit.dsk ~/microM8/MyDisks/exit.dsk 