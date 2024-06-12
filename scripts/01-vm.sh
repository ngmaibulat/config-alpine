iso=$HOME/Downloads/alpine-virt-3.20.0-x86_64.iso
img=$HOME/vm/alpine-01.raw

### Install Alpine Linux

# fallocate -l 2G $img

# qemu-system-x86_64 \
#     -M pc \
#     -drive file=$img,format=raw,if=virtio \
#     -cdrom $iso \
#     -m 1G \
#     -smp 2 \
#     -cpu host \
#     -accel kvm \
#     -device virtio-net-pci,netdev=net0 \
#     -netdev bridge,id=net0,br=virbr0 \
#     -nographic

### Run Alpine Linux

qemu-system-x86_64 \
    -M pc \
    -drive file=$img,format=raw,if=virtio \
    -m 1G \
    -smp 2 \
    -cpu host \
    -accel kvm \
    -device virtio-net-pci,netdev=net0 \
    -netdev bridge,id=net0,br=virbr0 \
    -nographic

