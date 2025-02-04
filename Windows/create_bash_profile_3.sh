touch /home/$USER/bash_profile_3w.txt

printf 'echo "Hello $USER, Running .bash_profile" \n' >> /home/$USER/bash_profile_3w.txt
printf 'export PATH="/home/$USER/software/ESP126/EngSketchPad/bin:$PATH" \n' >> /home/$USER/bash_profile_3w.txt
printf 'export PATH="/home/$USER/software/anaconda3/bin:$PATH" \n' >> /home/$USER/bash_profile_3w.txt
printf 'export PYTHONPATH="/home/$USER/software/anaconda3/lib/python3.12/lib-dynload:$PYTHONPATH "\n' >> /home/$USER/bash_profile_3w.txt
printf 'export PYTHONPATH="/home/$USER/software/anaconda3/bin:$PYTHONPATH "\n' >> /home/$USER/bash_profile_3w.txt
printf 'export PYTHONPATH="/home/$USER/software/anaconda3/lib:$PYTHONPATH "\n' >> /home/$USER/bash_profile_3w.txt
printf 'export PYTHONPATH="/home/$USER/software/anaconda3/lib/python3.12/site-packages:$PYTHONPATH "\n' >> /home/$USER/bash_profile_3w.txt
printf 'export LD_LIBRARY_PATH="/home/$USER/software/ipopt/build/lib/" \n' >> /home/$USER/bash_profile_3w.txt
printf 'export PATH="/home/$USER/software/ipopt/build/bin:$PATH" \n' >> /home/$USER/bash_profile_3w.txt
printf 'export DYLD_LIBRARY_PATH="/home/$USER/software/ipopt/build/lib:$DYLD_LIBRARY_PATH" \n' >> /home/$USER/bash_profile_3w.txt
printf 'export DYLD_LIBRARY_PATH="/home/$USER/software/ipopt/ASL_build/lib:$DYLD_LIBRARY_PATH" \n' >> /home/$USER/bash_profile_3w.txt
printf 'export DYLD_LIBRARY_PATH="/home/$USER/software/ipopt/HSL_build/lib:$DYLD_LIBRARY_PATH" \n' >> /home/$USER/bash_profile_3w.txt
printf 'export IPOPT_INCLUDE_DIR="/home/$USER/software/ipopt/build/include/coin-or" \n' >> /home/$USER/bash_profile_3w.txt
printf 'export IPOPT_LIBRARY_DIR="/home/$USER/software/ipopt/build/lib" \n' >> /home/$USER/bash_profile_3w.txt

mv /home/$USER/bash_profile_3w.txt /home/$USER/.bash_profile
rm /home/$USER/bash_profile_3w.txt
source /home/$USER/.bash_profile