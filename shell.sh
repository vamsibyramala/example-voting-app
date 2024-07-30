#!/bin/bash
repo_url="https://njdoxqmycr7yhui4f5lvzzpxqn2obfowuwfmjf2nk5jlluyj6mka@dev.azure.com/vamsi8188/project/_git/project"
local_dir="/tmp/temp"
git clone $repo_url $local_dir
cd $local_dir
sed -i "s|image:.*|image: vamsi.azurecr.io/$2:$3|g" k8s-specifications/$1-deployment.yaml
git add .
git commit -m "manifest file updated"
git push
