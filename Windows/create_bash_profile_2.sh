touch /home/$USER/bash_profile_2w.txt

printf 'echo "Hello $USER, Running .bash_profile" \n' >> /home/$USER/bash_profile_2w.txt
printf 'export PATH="/home/$USER/software/ESP126/EngSketchPad/bin:$PATH" \n' >> /home/$USER/bash_profile_2w.txt
printf 'export PATH="/home/$USER/software/anaconda3/bin:$PATH" \n' >> /home/$USER/bash_profile_2w.txt
printf 'export PYTHONPATH="/home/$USER/software/anaconda3/lib/python3.12/lib-dynload:$PYTHONPATH "\n' >> /home/$USER/bash_profile_2w.txt
printf 'export PYTHONPATH="/home/$USER/software/anaconda3/bin:$PYTHONPATH "\n' >> /home/$USER/bash_profile_2w.txt
printf 'export PYTHONPATH="/home/$USER/software/anaconda3/lib:$PYTHONPATH "\n' >> /home/$USER/bash_profile_2w.txt
printf 'export PYTHONPATH="/home/$USER/software/anaconda3/lib/python3.12/site-packages:$PYTHONPATH "\n' >> /home/$USER/bash_profile_2w.txt

mv /home/$USER/bash_profile_2w.txt /home/$USER/.bash_profile
source /home/$USER/.bash_profile