# Debian_Bullseye_Strapi_API

### Update & Upgrade.

```
sudo apt update -y && sudo apt dist-upgrade -y
```

### Switch repos from bionic to disco.

```
sed -i 's/buster/bullseye/g' /etc/apt/sources.list
```

```
sudo apt update -y
```

```
sudo apt upgrade -y
```

```
sudo apt dist-upgrade -y
```

```
sudo apt autoremove -y
```

```
sudo apt clean -y
```

