# Debian_Strapi_Backend_API

## Prerequisites:

* [Upgrade Debian Buster to Bullseye](https://github.com/brettjrea/Debian_Bullseye_Upgrade_Script)
* [Install NVM](https://github.com/brettjrea/Debian_Install_NVM)

---

### This new one fetches a script from this repo which is useful for using inside of another script.

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


### Quickscript: 

```
sudo apt upgrade -y && sudo apt update -y && sudo apt autoremove -y
sudo apt install libvips libvips-dev libvips-tools python gir1.2-vips-8.0 make g++ -y
npm install -g yarn
yarn create strapi-app my-backend --quickstart
cd my-backend
echo "14.16.0" > .nvmrc
npm run develop
```

---

## Script breakdown:

### Always be updating:

```
sudo apt upgrade -y && sudo apt update -y && sudo apt autoremove -y
```

### Install required programs:

```
sudo apt install libvips libvips-dev libvips-tools python gir1.2-vips-8.0 make g++ -y
```

### Commands:
```
npm install -g yarn
yarn create strapi-app my-backend --quickstart
cd my-backend
echo "14.16.0" > .nvmrc
npm run develop
```

---

*The above command used echo to set this apps node version in a .nvmrc file so you need to run the app with NPM instead of yarn with the following command.*

```
npm run develop
```

*Quickly start after a shutdown or reboot.*

```
cd my-backend
npm run develop
```

---

*You might now want to [install a Gatsby.js w/ Styled-Components.](https://github.com/brettjrea/Gatsby_Typescript_Styled_Components) frontend*

*You might now want to [install a Gatsby.js w/ Emotion and TailwindCSS.](https://github.com/brettjrea/Gatsby_Typescript_Emotion_TailwindCSS) frontend*
