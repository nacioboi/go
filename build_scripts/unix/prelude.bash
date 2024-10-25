#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

go_binary_path=$(cat ${SCRIPT_DIR}/golang_binary_path.txt)
dir="${go_binary_path%/*}"
file="${go_binary_path##*/}"

export GOROOT=$(pwd)
export GOROOT_BOOTSTRAP=${dir%/*}
echo "GOROOT: ${GOROOT}"
echo "GOROOT_BOOTSTRAP: ${GOROOT_BOOTSTRAP}"

cd ./src

echo
echo "We need to make sure the set-aside binary is the correct name for use by the toolchain..."
echo "Please provide priviledges for a rename of \`${dir}/${file}\` to \`${dir}/go\`"
sudo mv ${dir}/${file} ${dir}/go
echo "Done."
echo

trapped(){
	cd ..
	echo
	echo "Please provide priviledges for a rename of \`${dir}/go\` to \`${dir}/${file}\`"
	sudo mv ${dir}/go ${dir}/${file}
	echo "Done."
	echo
}
trap 'trapped' exit