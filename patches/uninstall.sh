echo $1
rootdirectory="$PWD"
# ---------------------------------


cd $rootdirectory
cd frameworks/base
echo "Reverting frameworks/base patches..."
git apply --reverse $rootdirectory/device/oppo/apq8064-common/patches/frameworks/base/*.patch
echo " "

cd $rootdirectory
cd external/sepolicy
echo "Reverting external/sepolicy patches..."
git apply --reverse $rootdirectory/device/oppo/apq8064-common/patches/external/sepolicy/*.patch
echo " "

cd $rootdirectory
cd system/core
echo "Reverting system/core patches..."
git apply --reverse $rootdirectory/device/oppo/apq8064-common/patches/system/core/*.patch
echo " "


# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
