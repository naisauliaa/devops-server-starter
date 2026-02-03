#!/bin/bash


if [ "$EUID" -ne 0 ]
  then echo "Jalankan script ini sebagai root (sudo)"
  exit
fi

echo "Mengatur Timezone ke Asia/Jakarta"
timedatectl set-timezone Asia/Jakarta
echo "Timezone saat ini: $(date)"

echo "Update & Upgrade Sistem"
dnf update -y
dnf upgrade -y

echo "Install Dependencies (Git, Curl, Zip, Python3)"
dnf install -y git curl zip python3 python3-pip

echo "Install Docker Engine (Versi AWS)"
dnf install -y docker libxcrypt-compat


echo "Menjalankan service Docker..."
systemctl start docker
systemctl enable docker

# Menambahkan user 'ec2-user' ke grup docker

if [ -n "$SUDO_USER" ]; then
    usermod -aG docker $SUDO_USER
    echo "User $SUDO_USER telah ditambahkan ke grup Docker."
else
  
    usermod -aG docker ec2-user
    echo "User ec2-user telah ditambahkan ke grup Docker."
fi

echo "--- Instalasi Selesai ---"
docker --version
python3 --version

echo "PENTING: Silakan LOGOUT dan LOGIN kembali agar perubahan grup Docker aktif."
