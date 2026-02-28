#!/bin/bash

echo "Installing WordPress..." &&
bash ./scripts/rm-wordpress-script.sh &&
curl -O https://wordpress.org/wordpress-$1.zip &&
unzip -o wordpress-$1.zip &&
rm -rf wordpress/wp-content &&
mv wordpress/* ./api &&
rm -rf wordpress wordpress-$1.zip &&
echo "Finished installing WordPress!"