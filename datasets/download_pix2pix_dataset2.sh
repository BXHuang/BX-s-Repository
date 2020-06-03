FILE=$1
if [[ $FILE != "cityscapes" && $FILE != "night2day" && $FILE != "edges2handbags" && $FILE != "edges2shoes" && $FILE != "facades" && $FILE != "maps" && $FILE != "pixelat"  ]]; then
  echo "Available datasets are cityscapes, night2day, edges2handbags, edges2shoes, facades, maps, pixelat"
  exit 1
fi
if [[ $FILE == "cityscapes" ]]; then
    echo "Due to license issue, we cannot provide the Cityscapes dataset from our repository. Please download the Cityscapes dataset from https://cityscapes-dataset.com, and use the script ./datasets/prepare_cityscapes_dataset.py."
    echo "You need to download gtFine_trainvaltest.zip and leftImg8bit_trainvaltest.zip. For further instruction, please read ./datasets/prepare_cityscapes_dataset.py"
    exit 1
fi
echo "Specified [$FILE]"
URL=https://drive.google.com/drive/folders/1igmhP9o8rAB2FpYp02d9y4pAG0ofE5Je?usp=sharing/$FILE.tar.gz
TAR_FILE=./1igmhP9o8rAB2FpYp02d9y4pAG0ofE5Je?usp=sharing/$FILE.tar.gz
TARGET_DIR=./1igmhP9o8rAB2FpYp02d9y4pAG0ofE5Je?usp=sharing/$FILE/
wget -N $URL -O $TAR_FILE
mkdir -p $TARGET_DIR
tar -zxvf $TAR_FILE -C ./1igmhP9o8rAB2FpYp02d9y4pAG0ofE5Je?usp=sharing/
rm $TAR_FILE
