#! /bin/bash

# Extensions
. ./scripts/helpers/io.sh


# Move into scripts folder
cd ./scripts
# Collect options/scripts
options=()
for script in ./*.sh; do
	options+=($(basename "$script" .sh))
done
# Show menu
echo_info "########## SELECT SCRIPT TO EXECUTE ##########"
select opt in "${options[@]}"; do
	if [ -n "$opt" ]; then
		# Execute script by selected option
		. ./$opt.sh
	fi
done