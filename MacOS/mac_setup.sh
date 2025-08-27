# How to run:
# source /Users/$USER/software/mae451/MacOS/mac_setup.sh

# setup folders
# Assumes you have a folder /Users/$USER/software
# Assumes you have cloned the repository into the locaiton: /Users/$USER/software/mae451
# Assuems you have a folder /Users/$USER/software/MA27/ma21-1.0.0 which contains the MA27 files

cd /Users/$USER/software

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

cd /Users/$USER/software

if [ $(arch) = "arm64" ]; then
    curl -O https://acdl.mit.edu/ESP/PreBuilts/ESP128-macos-arm64.tgz
    tar -xvzf ESP128-macos-arm64.tgz
else
    curl -O https://acdl.mit.edu/ESP/PreBuilts/ESP128-macos-x86_64.tgz
    tar -xvzf ESP128-macos-x86_64.tgz
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
if [ $(arch) = "arm64" ]; then
    curl -O https://repo.anaconda.com/archive/Anaconda3-2025.06-1-MacOSX-arm64.sh
    bash /Users/$USER/software/Anaconda3-2025.06-1-MacOSX-arm64.sh -p /Users/$USER/software/anaconda3
    cd /Users/$USER/software
    rm -rf Anaconda3-2025.06-1-MacOSX-arm64.sh
else
    curl -O https://repo.anaconda.com/archive/Anaconda3-2025.06-1-MacOSX-x86_64.sh 
    bash /Users/$USER/software/Anaconda3-2025.06-1-MacOSX-x86_64.sh -p /Users/$USER/software/anaconda3
    cd /Users/$USER/software
    rm -rf Anaconda3-2025.06-1-MacOSX-x86_64.sh
fi

rm -f /Users/$USER/.zshenv
cp /Users/$USER/software/mae451/MacOS/zshenv_1.txt /Users/$USER/.zshenv
source /Users/$USER/.zshenv

export PATH="/Users/$USER/software/anaconda3/bin:$PATH"
# Corrects PYTHONPATH environment variable
#export PYTHONPATH=""
export PYTHONPATH="/Users/$USER/software/anaconda3/lib/python3.13/lib-dynload:$PYTHONPATH"
export PYTHONPATH="/Users/$USER/software/anaconda3/bin:$PYTHONPATH"
export PYTHONPATH="/Users/$USER/software/anaconda3/lib:$PYTHONPATH"
export PYTHONPATH="/Users/$USER/software/anaconda3/lib/python3.13/site-packages:$PYTHONPATH"

conda update --all
pip install pint

cd /Users/$USER/software/
pip install -e mae451

