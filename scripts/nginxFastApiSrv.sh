#!/bin/bash
IP=$(curl ident.me)
sed -i "s/changeme/$IP/g" /etc/nginx/sites-available/fastapi
