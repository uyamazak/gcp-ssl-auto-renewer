# gae_ssl_autoupdater
Update SSL Certificates of Google App Engine (GAE) in just 1 command.

## Prerequisites

- A Domain be managed in Google Cloud DNS.
- GAE Project
- Install the Let's Encrypt client dehydrated https://github.com/lukas2511/dehydrated
- Install and init Google Cloud SDK

More details in
http://uyamazak.hatenablog.com/entry/2017/07/03/194950

## Install

```
git clone https://github.com/uyamazak/gae_ssl_autoupdater.git
cd gae_ssl_autoupdater

# Edit variables written at the top of gae_hook.sh
vim gae_hook.sh

# copy files to dehydrated's install dir
cp gae_hook.sh /path/to/dehydrated
cp config /path/to/dehydrated
```

## Usage

```
cd /path/to/dehydrated
./dehydrated -c -d example.com --challenge dns-01 -k ./gae_hook.sh
```

## Author
uyamazak at bizocean
http://uyamazak.hatenablog.com

