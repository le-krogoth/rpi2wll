echo "Adding options to config.txt to enable audio support"
cat << __EOF__ >> "${BINARIES_DIR}/rpi-firmware/config.txt"
dtparam=audio=on
__EOF__
