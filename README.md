# Debian_Strapi_Backend_API

## Prerequisites:

* [Upgrade Debian Buster to Bullseye](https://github.com/brettjrea/Debian_Bullseye_Upgrade_Script)
* [Install NVM](https://github.com/brettjrea/Debian_Install_NVM)

---

## Commands:
```
sudo apt install libvips libvips-dev libvips-tools curl git python gir1.2-vips-8.0 make g++ -y
```

```
nvm install 14.16.0
```

```
npm install -g yarn
```

```
yarn create strapi-app my-backend --quickstart
```

```
cd my-backend
```

```
yarn develop
```

*If you want to run other versions of Node you can set this apps version in a .nvmrc file with the following command.

```
echo "14.16.0" > .nvmrc
```

*Then run the app with NPM instead of yarn with the following command.*

```
npm run develop
```

*Quickly start after a shutdown or reboot.*

```
cd my-backend
npm run develop
```

---

*You might now want to [install a Gatsby.js](https://github.com/brettjrea/Gatsby_Typescript_Styled_Components) frontend*
