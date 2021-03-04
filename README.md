# Debian_Bullseye_Strapi_API

```
sudo apt update -y &&
sudo apt upgrade -y &&
sudo apt autoremove -y &&
sudo apt install wget -y &&
wget https://raw.githubusercontent.com/brettjrea/Scripts_Fix/master/fixscripts.sh &&
wget https://raw.githubusercontent.com/brettjrea/Debian_Bullseye_Strapi_API/master/upgrade.sh &&
sudo bash fixscripts.sh &&
sudo bash upgrade.sh && 
sudo apt autoremove -y &&
sudo apt clean -y
```

```
sudo apt install libvips libvips-dev libvips-tools curl git python gir1.2-vips-8.0 make g++ -y
```

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```

```
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
```

*If you can't copy and paste the above command, close and reopen the terminal to start using NVM and continue.*

```
nvm install 14.16.0
```

```
npm install -g yarn
```

```
yarn
```

```
yarn create strapi-app my-project --quickstart
```

```
cd my-project
```

```
yarn develop
```
