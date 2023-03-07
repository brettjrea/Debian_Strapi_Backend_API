#### Title: "Node.js and Build Tools Installation Guide with Optional OS Upgrades"

1. Optional OS upgrades:
   1. [Upgrade Debian Bullseye to Buster](https://github.com/brettjrea/Debian_Bullseye_Upgrade_Script)
   2. [Upgrade Ubuntu Focal to Jammy](https://github.com/brettjrea/Ubuntu_Jammy_Upgrade_Script)
   
2. Node.js tools:
   1. [Install NVM](https://github.com/brettjrea/Debian_Install_NVM) - Node Version Manager
   2. [Install NVS](https://github.com/brettjrea/Debian_Install_NVS) - Node Version Switcher (added 02/23 it is a cross-platform node based successor/replacement for NVM)
   
3. Build tools:
   1. [Install common build tools.](https://github.com/brettjrea/Debian_Install_Common_Build_Tools)
   
4. Frontends, Backends, and Process Manager:
   1. [Install Strapi.io backend](https://github.com/brettjrea/Debian_Strapi_Backend_API)
   2. [Install Gatsby frontend](https://github.com/brettjrea/Gatsby_Typescript_Styled_Components)
   3. [Install PM2 Process](https://github.com/brettjrea/Debian_Configure_PM2)
---
### Debian Strapi Backend API

#### This new one fetches a script from this repo which is useful for using inside of another script.

```
sudo apt upgrade -y && sudo apt update -y && sudo apt autoremove -y &&
sudo apt install wget &&
sudo apt-get install --reinstall ca-certificates -y &&
wget https://raw.githubusercontent.com/brettjrea/Debian_Strapi_Backend_API/main/install-strapi.sh &&
chmod +x install-strapi.sh &&
./install-strapi.sh &&
sudo apt autoremove -y &&
sudo apt clean -y
```

```
cd ~/my-backend && yarn deploy
```
I seperated the command to start development because I am using PM2 from the link above. ☝️ 

#### This is a copy-paste for those who dont want to use a script. 

```
sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y &&
sudo apt install libvips libvips-dev libvips-tools python gir1.2-vips-8.0 make g++ -y &&
npm install -g yarn &&
yarn global add pm2 &&
yarn create strapi-app my-backend --quickstart --no-run &&
cd my-backend &&
echo "18.14.2" > .nvmrc && echo "const strapi = require('@strapi/strapi'); strapi().start();" > server.js &&
pm2 start yarn --name my-backend -- start &&
sleep 20 &&
pm2 stop my-backend &&
pm2 delete all &&
yarn add strapi-plugin-init-admin-user &&
echo "INIT_ADMIN_USERNAME=admin
INIT_ADMIN_PASSWORD=admin
INIT_ADMIN_FIRSTNAME=Admin
INIT_ADMIN_LASTNAME=Admin
INIT_ADMIN_EMAIL=admin@init-strapi-admin.strapi.io" >> .env
```
