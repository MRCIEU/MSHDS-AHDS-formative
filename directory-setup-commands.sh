###
### This script contains commands for setting up directories and moving data to the correct location


##
## making directories

download_dir="~/Downloads"

mkdir -p data/original
mkdir -p data/derived
mkdir -p code
mkdir -p results
mkdir -p logs


##
## moving the data to the data directory

mv ${download_dir}/BMX_D.csv data/original
mv ${download_dir}/accel.zip data/

# extract the acclerometer data from the zip file
unzip -d data/original data/accel.zip
