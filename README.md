# GCP-SSL-AutoUpdater
Update SSL Certificates Google Cloud Load Balancing with SSL proxy (Cloud LB) in just 1 command.

## Prerequisites

- A Domain be managed in Google Cloud DNS.
- GCP Project with Cloud LB enabled
- Install the Let's Encrypt client dehydrated https://github.com/lukas2511/dehydrated
- Install and init Google Cloud SDK

More details in
http://uyamazak.hatenablog.com/entry/2017/07/03/194950

## Install

```
git clone https://github.com/uyamazak/GCP-SSL-AutoUpdater.git

cd GCP-SSL-AutoUpdater

# install dehydrated
git clone https://github.com/lukas2511/dehydrated.git


# Make your hook file
cd GCP-SSL-AutoUpdater/hooks

## Cloud LB
cp httpslb_hook.sh.sample my_httpslb_hook.sh

# Edit variables
vim my_gae_hook.sh

# Make command file
# Edit domain and hook.sh
cp example.com.sh your.example.com.sh
vim your.example.com.sh
chmod 700 your.example.com.sh

# Copy config file to dehydrated's install dir
cd GCP-SSL-AutoUpdater
cp config ./dehydrated
```

## Usage

```
./your.example.com.sh
```

## Author
uyamazak at bizocean
http://uyamazak.hatenablog.com

