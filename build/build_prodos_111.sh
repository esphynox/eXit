path="../disks/dos"

root_path="../"
bin_path=${root_path}"bin"
images_path=${root_path}"images"
png_images_path=${images_path}"/png"
hgr_images_path=${images_path}"/hgr"
disks_path=${root_path}"disks/prodos"
src_path=${root_path}"src/raw"

empty_disk_filename="empty_prodos_111.dsk"
empty_disk_path=${disks_path}/${empty_disk_filename}

result_disk_filename="exit_prodos_111.dsk"
result_disk_path=${disks_path}/${result_disk_filename}

cp ${empty_disk_path} ${result_disk_path} # copy pre-existing .dsk image

# copy src files
src=("STARTUP" "SPLASH" "EXIT")
for i in "${src[@]}"
do
    cat ${src_path}/${i}.bas | applecommander -bas ${result_disk_path} ${i}
done

# copy img files
images=("img0" "img1" "img2" "img3" "img4" "img5" "img6" "img7" "img8")
for i in "${images[@]}"
do
  ${bin_path}/tohgr ${png_images_path}/${i}_280x192.png # convert png to hgr w/ `tohgr` tool
  mv ${png_images_path}/${i}_280x192.hgr ${hgr_images_path}/${i}.hgr # move .hgr file to "hgr" folder
  rm ${png_images_path}/${i}_280x192_hgr.png # remove .png preview file
  applecommander -p ${result_disk_path} ${i}.HGR BIN 0x2000 < ${hgr_images_path}/${i}.HGR; # put hgr to disk image
done