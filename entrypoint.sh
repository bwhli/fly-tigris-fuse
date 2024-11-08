#!/bin/bash

echo "$AWS_ACCESS_KEY_ID:$AWS_SECRET_ACCESS_KEY" > /root/.passwd-s3fs
chmod 600 /root/.passwd-s3fs

MOUNT_POINT=/tigris
mkdir -p $MOUNT_POINT
s3fs $BUCKET_NAME $MOUNT_POINT -o passwd_file=${HOME}/.passwd-s3fs -o url=https://fly.storage.tigris.dev -o use_path_request_style

sleep inf