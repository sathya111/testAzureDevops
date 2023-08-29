AZUREPAT=$AZUREPAT
AZUSERNAME=$AZUSERNAME
AZUSER_EMAIL=$AZUSER_EMAIL
AZORG=$AZORG
git clone https://github.com/sathya111/testAzureDevops
cd testAzureDevops
rm -rf .git

cd ..

GIT_CMD_REPOSITORY="https://dev.azure.com/sathyapinreddy/Dot-Net-Demo/_git/arm"

git clone $GIT_CMD_REPOSITORY

