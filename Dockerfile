FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    qemu-system-x86 \
    qemu-utils \
    cpu-checker \
    curl \
    && rm -rf /var/lib/apt/lists/*

CMD ["bash", "-c", "echo 'QEMU TEST'; qemu-system-x86_64 --version; echo 'KVM CHECK'; ls -l /dev/kvm || echo 'KVM NOT AVAILABLE'; sleep infinity"]
