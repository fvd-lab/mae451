touch /home/$USER/bash_profile_1w.txt

printf 'echo "Hello $USER, Running .bash_profile" \n' >> /home/$USER/bash_profile_1w.txt
printf 'export PATH="/home/$USER/software/anaconda3/bin:$PATH" \n' >> /home/$USER/bash_profile_1w.txt
printf 'export PYTHONPATH="/home/$USER/software/anaconda3/lib/python3.12/lib-dynload:$PYTHONPATH "\n' >> /home/$USER/bash_profile_1w.txt
printf 'export PYTHONPATH="/home/$USER/software/anaconda3/bin:$PYTHONPATH "\n' >> /home/$USER/bash_profile_1w.txt
printf 'export PYTHONPATH="/home/$USER/software/anaconda3/lib:$PYTHONPATH "\n' >> /home/$USER/bash_profile_1w.txt
printf 'export PYTHONPATH="/home/$USER/software/anaconda3/lib/python3.12/site-packages:$PYTHONPATH "\n' >> /home/$USER/bash_profile_1w.txt

mv /home/$USER/bash_profile_1w.txt /home/$USER/.bash_profile
rm /home/$USER/bash_profile_1w.txt
source /home/$USER/.bash_profile