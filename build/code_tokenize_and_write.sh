if [ -z $1 ]; then
    echo "No arguments provided"
    exit 1
fi

path=$1
cp ${path}/empty.dsk $path/exit.dsk # copy pre-existing .dsk image

src=("HELLO" "SPLASH" "EXIT")
for i in "${src[@]}"
do
  ../bin/tokenize_asoft < ../src/raw/${i}.bas > ../src/tokenized/${i}
  ../bin/dos33 ${path}/exit.dsk SAVE A ../src/tokenized/${i}
done