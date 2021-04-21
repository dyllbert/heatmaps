folder=$1_folder

mkdir $folder
cp $1_COUNT $folder
cp $1_ALL_MACS $folder
cp $1_UNIQUE_MACS $folder
cp $1 $folder
./clean.sh $1
