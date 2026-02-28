#!/bin/bash
echo "Removing WordPress..." &&
cd api &&
rm -rf wordpress-*.zip wp-admin wp-includes xmlrpc.php index.php readme.html license.txt &&
rm -rf `find wp-*.php ! -name 'wp-config.php'`&&
echo "Finished removing WordPress!"