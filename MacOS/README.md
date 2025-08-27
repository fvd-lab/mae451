# Mac Installation
Mac installation is very straightforward

## Installation of this package
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

Get an MA27 license from the following website:
```
https://www.hsl.rl.ac.uk/download/MA27/1.0.0/
```

Make a software folder:
```shell
mkdir /Users/$USER/software/MA27
```
and Put the extracted zip file (ma27-1.0.0) in `/Users/$USER/software/MA27`.  You should have a folder `/Users/$USER/software/MA27/ma27-1.0.0`

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
