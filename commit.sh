AZUREPAT=$AZUREPAT
AZUSERNAME=$AZUSERNAME
AZUSER_EMAIL=$AZUSER_EMAIL
AZORG=$AZORG
git clone https://github.com/sathya111/testAzureDevops
cd testAzureDevops
rm -rf .git

cd ..

#GIT_CMD_REPOSITORY="https://$AZUSERNAME:$AZUREPAT@dev.azure.com/$AZORG/TestGitSync/_git/TestGitSync"
GIT_CMD_REPOSITORY="https://$AZUSERNAME:$AZUREPAT@dev.azure.com/$AZORG//Dot-Net-Demo/_git/arm

git clone $GIT_CMD_REPOSITORY

cp -r testAzureDevops/* Dot-Net-Demo/

cd Dot-Net-Demo

git config --global user.email "$AZUSER_EMAIL"
git config --global user.name "$AZUSERNAME"

git add .
git commit -m "sync from git to azure"

git push
