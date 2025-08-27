# Mac Installation
Mac installation is fairly straightforward

## Installation of this package
Download Xcode from the App Store

Open a Terminal window and install the Xcode Developer Tools using:
```shell
xcode-select --install
```

Install Homebrew (https://brew.sh/):
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Download VS Code if desired:
```
https://code.visualstudio.com/download
```

Download and install XQuartz:
```
https://www.xquartz.org
```

Make a software folder:
```shell
mkdir /Users/$USER/software
```

Change directory to the software folder:
```shell
cd /Users/$USER/software
```

Clone the repository using: 
```shell
git clone https://github.com/fvd-lab/mae451.git
```
(see the specific link on the github home page for the most up to date information)

Then run the setup file:
```shell
cd /Users/$USER/software/mae451/MacOS
```
```shell
chmod 777 /Users/$USER/software/mae451/MacOS/mac_setup.sh
```
```shell
source /Users/$USER/software/mae451/MacOS/mac_setup.sh
```
