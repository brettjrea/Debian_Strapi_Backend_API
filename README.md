# Debian_Bullseye_Strapi_API

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

