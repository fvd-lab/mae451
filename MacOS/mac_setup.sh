# How to run:
# source /Users/$USER/software/mae451/MacOS/mac_setup.sh

# setup folders
# Assumes you have a folder /Users/$USER/software
# Assumes you have cloned the repository into the locaiton: /Users/$USER/software/mae451
# Assuems you have a folder /Users/$USER/software/MA27/ma21-1.0.0 which contains the MA27 files

cd /Users/$USER/software

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

cd /Users/$USER/software

if [ "$ARCH" = "arm64" ]; then
    curl -O https://acdl.mit.edu/ESP/PreBuilts/ESP126-macos-arm64.tgz
    tar -xvzf ESP126-macos-arm64.tgz
else
    curl -O https://acdl.mit.edu/ESP/PreBuilts/ESP126-macos-x86_64.tgz
    tar -xvzf ESP126-macos-x86_64.tgz
fi

export PATH="/opt/homebrew/bin:$PATH"

brew install gcc
brew install pkg-config
brew install cmake
brew install openblas
brew install lapack
brew install pkg-config
brew install timelimit
brew install openmpi

cd /Users/$USER/software
if [ "$ARCH" = "arm64" ]; then
    curl -O https://repo.anaconda.com/archive/Anaconda3-2024.10-1-MacOSX-arm64.sh
    bash  -p /Users/$USER/software Anaconda3-2024.10-1-MacOSX-arm64.sh
    cd /Users/$USER/software
    rm -rf Anaconda3-2024.10-1-MacOSX-arm64.sh
else
    curl -O https://repo.anaconda.com/archive/Anaconda3-2024.10-1-MacOSX-x86_64.sh 
    bash -p /Users/$USER/software Anaconda3-2024.10-1-MacOSX-x86_64.sh 
    cd /Users/$USER/software
    rm -rf Anaconda3-2024.10-1-MacOSX-x86_64.sh
fi

rm -f /Users/$USER/.zshenv
cp /Users/$USER/software/mae451/MacOS/zshenv_1.txt /Users/$USER/.zshenv
source /Users/$USER/.zshenv

export PATH="/Users/$USER/software/anaconda3/bin:$PATH"
# Corrects PYTHONPATH environment variable
#export PYTHONPATH=""
export PYTHONPATH="/Users/$USER/software/anaconda3/lib/python3.12/lib-dynload:$PYTHONPATH"
export PYTHONPATH="/Users/$USER/software/anaconda3/bin:$PYTHONPATH"
export PYTHONPATH="/Users/$USER/software/anaconda3/lib:$PYTHONPATH"
export PYTHONPATH="/Users/$USER/software/anaconda3/lib/python3.12/site-packages:$PYTHONPATH"

conda update --all
conda install -c conda-forge cvxopt
pip install pint

mkdir /Users/$USER/software/ipopt
cd /Users/$USER/software/ipopt
git clone https://github.com/coin-or/Ipopt.git
git clone https://github.com/coin-or-tools/ThirdParty-ASL.git
git clone https://github.com/coin-or-tools/ThirdParty-HSL.git

cd /Users/$USER/software/ipopt/ThirdParty-ASL
./get.ASL

mkdir /Users/$USER/software/ipopt/ASL_build
cd /Users/$USER/software/ipopt/ThirdParty-ASL
./configure --prefix=/Users/$USER/software/ipopt/ASL_build
make install

cd /Users/$USER/software/ipopt/ThirdParty-HSL
mkdir coinhsl
cp -a /Users/$USER/software/MA27/ma27-1.0.0/. /Users/$USER/software/ipopt/ThirdParty-HSL/coinhsl
mv /Users/$USER/software/ipopt/ThirdParty-HSL/coinhsl/src /Users/$USER/software/ipopt/ThirdParty-HSL/coinhsl/ma27

cd /Users/$USER/software/ipopt
mkdir HSL_build
cd /Users/$USER/software/ipopt/ThirdParty-HSL
./configure --prefix=/Users/$USER/software/ipopt/HSL_build
make install

cd /Users/$USER/software/ipopt/Ipopt
mkdir /Users/$USER/software/ipopt/build
./configure --prefix=/Users/$USER/software/ipopt/build  --with-asl-lflags="-L/Users/$USER/software/ipopt/ASL_build/lib -lcoinasl" --with-hsl-lflags="-L/Users/$USER/software/ipopt/HSL_build/lib -lcoinhsl" --disable-java --with-asl-cflags="-I/Users/$USER/software/ipopt/ASL_build/include/coin-or/asl" --with-hsl-cflags="-I/Users/$USER/software/ipopt/HSL_build/include/coin-or/hsl"

make
make test
make install

rm -f /Users/$USER/.zshenv
cp /Users/$USER/software/mae451/MacOS/zshenv_2.txt /Users/$USER/.zshenv
source /Users/$USER/.zshenv


cd /Users/$USER/software/
pip install -e mae451

