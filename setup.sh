#!/usr/bin/env bash

# Setup the template ready for use
echo -e "Setting up the repo for first use..."

# Module Full name as seen in the readme etc
read -p "Enter the module full name (e.g. Example Service, don't include Magento 2 module): " module_name
find . -type f -exec sed -i 's/{NAME}/'$module_name'/g' {} +

# Module Description as seen in the composer.json file
read -p "Enter the module description (e.g. This module does something): " module_description
find . -type f -exec sed -i 's/{DESCRIPTION}/'$module_description'/g' {} +

# Module Magento name as used in registration.php and module.xml
read -p "Enter the module name (e.g. CliveWalkden_Example): " magento2_name
find . -type f -exec sed -i 's/CliveWalkden_Template/'$magento2_name'/g' {} +

# Module GitHub path as used in the README.md for the badges
read -p "Enter the module remote github repo (e.g. clivewalkden/magento2-module-example): " module_repo
find . -type f -exec sed -i 's/clivewalkden\/magento2-module-template/'$module_repo'/g' {} +