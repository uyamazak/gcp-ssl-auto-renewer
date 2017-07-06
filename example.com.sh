#!/usr/bin/env bash
./dehydrated/dehydrated -c -d example.com --challenge dns-01 -k ./hooks/gae_hook.sh