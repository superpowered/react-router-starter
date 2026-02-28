#!/bin/bash
echo "Removing Wordpress..." &&
cd api &&
rm -rf wordpress-*.zip wp-admin wp-includes xmlrpc.php index.php readme.html license.txt &&
rm -rf `find wp-*.php ! -name 'wp-config.php'`