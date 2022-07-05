#!/bin/bash

# Set user variable
username=$SUDO_USER

install_base_path="/usr/local/"
download_base_path="${HOME}/Downloads/"

echo "======================="
echo "Dwarf Fortress"
echo "Lazy Newb Pack"
echo "======================="

echo "Downloading"

lnp_archive_name="LinuxDwarfPack"
lnp_full_dl_path="${download_base_path}${lnp_archive_name}.tar.bz2"

wget \
-O ${lnp_full_dl_path} \
"https://dffd.bay12games.com/download.php?id=15054&f=LinuxDwarfPack"*".tar.bz2" /

echo "Extract"

# Create directory
lnp_extract_path="${install_base_path}${lnp_archive_name}"
mkdir -p ${lnp_extract_path}

# Extract to directory
tar -xvf ${lnp_full_dl_path} --strip-components 1 -C "${lnp_extract_path}"

echo "Install"

# Run Startup Script
cd ${lnp_extract_path}
./startlnp.sh

echo "Create run variable"

# Add alias to bashrc
echo "alias dwarf-fortress='cd ${lnp_extract_path} && ./startlnp.sh'" >> ~/.bashrc
