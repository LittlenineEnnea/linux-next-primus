export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu-
export CCACHE_DIR=~/.ccache
ccache -M 10G
make mrproper
make -j$(nproc) ARCH=arm64 CROSS_COMPILE=${CROSS_COMPILE} -o=OUT defconfig
make -j$(nproc) ARCH=arm64 CROSS_COMPILE=${CROSS_COMPILE} -o=OUT Image dtbs modules
