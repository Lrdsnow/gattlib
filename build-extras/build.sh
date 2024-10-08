cd $(dirname "$0")/..
if [ -d "build" ]; then
    rm -rf build
fi
mkdir build
cd build
cmake -DBLUEZ_VERSION=5.50 ..
make
cpack ..
cp ../build-extras/PKGBUILD ./PKGBUILD
makepkg -si
