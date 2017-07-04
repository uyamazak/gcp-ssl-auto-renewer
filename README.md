# gae_ssl_autoupdater
Update SSL Certificates of Google App Engine (GAE) in just 1 command.

## Prerequisites

- A Domain managed in Google Cloud DNS.
- GAE Project
- install the Let's Encrypt client dehydrated https://github.com/lukas2511/dehydrated
- Install and init Google Cloud SDK


More ditails in
http://uyamazak.hatenablog.com/entry/2017/07/03/194950

## Usage

```
cd /path/to/dehydrated
./dehydrated -c -d example.com --challenge dns-01 -k ./gae_hook.sh
```
