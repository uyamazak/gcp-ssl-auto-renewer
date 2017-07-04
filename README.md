# gae_ssl_autoupdater
Update SSL Certificates of Google App Engine (GAE) in just 1 command.

## Prerequisites

- A Domain be managed in Google Cloud DNS.
- GAE Project
- Install the Let's Encrypt client dehydrated https://github.com/lukas2511/dehydrated
- Install and init Google Cloud SDK

More ditails in
http://uyamazak.hatenablog.com/entry/2017/07/03/194950

## Install
Edit variables in head of gae_hook.sh and copy gae_hook.sh to your dehydrated directory.

## Usage

```
cd /path/to/dehydrated
./dehydrated -c -d example.com --challenge dns-01 -k ./gae_hook.sh
```

## Author
uyamazak at bizocean
http://uyamazak.hatenablog.com

