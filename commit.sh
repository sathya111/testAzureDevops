AZUREPAT=$AZUREPAT
AZUSERNAME=$AZUSERNAME
AZUSER_EMAIL=$AZUSER_EMAIL
AZORG=$AZORG
rm -rf testAzureDevops
git clone https://github.com/sathya111/testAzureDevops
####################
###################list files and driectories #############
ls


################change directory###############
cd testAzureDevops
#######display files############
ls 
rm -rf .git
############change directory #########
cd ..
ls 
################
GIT_CMD_REPOSITORY="https://dev.azure.com/sathyapinreddy/Dot-Net-Demo/_git/arm"
################
git clone $GIT_CMD_REPOSITORY
################list the azure repos directory ##############
ls -ltr
cp -r testAzureDevops/* arm/

######change the directory to arm azure repos path##########
cd arm
##########################
######show files of github files copied to azure rpos###########
git config --global user.email "$AZUSER_EMAIL"
git config --global user.email
git config --global user.name "$AZUSERNAME"
git config --global user.name

git status
git add .
git status
git commit -m "sync from git to azure"
git status

git push https://sathyapinreddy@dev.azure.com/sathyapinreddy/Dot-Net-Demo/_git/arm
