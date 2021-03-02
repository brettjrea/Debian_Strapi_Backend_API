# Debian_Bullseye_Strapi_API

### Update & Upgrade.

```
sudo apt update -y && sudo apt dist-upgrade -y
```

### Install update manager core.

```
sudo apt install update-manager-core -y
```

### Configure available releases to LTS.

```
sed -i 's/Prompt=lts/Prompt=normal/g' /etc/update-manager/release-upgrades
```

### Switch repos from bionic to disco.

```
sed -i 's/buster/bullseye/g' /etc/apt/sources.list
```

```
sed -i 's/^/#/' /etc/apt/sources.list.d/*.list
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

