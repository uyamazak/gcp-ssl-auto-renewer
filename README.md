# GCP-SSL-AutoUpdater
Auto renew SSL Certificates of Google App Engine (GAE) and Google Cloud Load Balancing with SSL proxy (Cloud LB) in just 1 command.

## Prerequisites

- A Domain be managed in Google Cloud DNS.
- Project with GAE or Cloud LB enabled
- Install the Let's Encrypt client dehydrated https://github.com/lukas2511/dehydrated
- Install Google Cloud SDK and init

More details in
http://uyamazak.hatenablog.com/entry/2017/07/03/194950


## Install

```
% cd /path/to/install_dir

% git clone https://github.com/uyamazak/GCP-SSL-AutoUpdater.git

% cd GCP-SSL-AutoUpdater

# install dehydrated
% git clone https://github.com/lukas2511/dehydrated.git

% ls
LICENSE  README.md  config  daily.sh  dehydrated/  example.com.sh  hooks/


# Make your hook file
% cd ./hooks

## if GAE
% cp gae_hook.sh.sample my_gae_hook.sh

## if Cloud LB
% cp httpslb_hook.sh.sample my_httpslb_hook.sh

# Edit variables
% vim my_gae_hook.sh

# Make your command file
% cd ../
$ pwd
/path/to/GCP-SSL-AutoUpdater

% cp example.com.sh your.example.com.sh
# Edit domain and hook.sh 
% vim your.example.com.sh
% chmod 700 your.example.com.sh

# Copy config file to dehydrated's install dir
$ pwd
/path/to/GCP-SSL-AutoUpdater
% cp config ./dehydrated
```

## Usage

Run command manually
```
% ./your.example.com.sh
```
Check run messages and ssl certificates from web browser.

if you want to use crontab. Use daily.sh.sample
```
% cp daily.sh.sample daily.sh 
% vim daily.sh 
```

```
% crontab -e
0 0 * * * /path/to/install_dir/daily.sh >> /path/to/install_dir/auto.log
```

## About zone name rule
Zone names of Cloud DNS needs to be a domain dots converted to a hyphen.

if domain is: www.example.com

when zone name must be: www-example-com

You can change converting rule in httpslb.base.
Edit line below 
```
ZONE_NAME=${domain//./-}
```

## Author
uyamazak at bizocean
http://uyamazak.hatenablog.com

