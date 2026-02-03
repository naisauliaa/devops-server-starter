# Server Automation Setup Script 🚀

Repository ini berisi skrip otomasi untuk inisialisasi server (Bootstrapping) menggunakan **Bash Script**. Proyek ini dibuat untuk memenuhi **Tugas Ujian Praktik Poin 5 & 6**.

## 📋 Lingkungan & Spesifikasi
- **Operating System**: Amazon Linux 2023 (AWS EC2)
- **Script Language**: Bash (`.sh`)
- **Target User**: Root / Sudoer

## ✅ Fitur (Menjawab Soal No. 5)
Skrip `setup_server.sh` menjalankan tugas-tugas berikut secara berurutan sesuai persyaratan soal:

| Poin | Deskripsi Tugas | Implementasi dalam Script |
| :--- | :--- | :--- |
| **a** | **Timezone Asia/Jakarta** | Menggunakan `timedatectl set-timezone Asia/Jakarta` |
| **b** | **Update & Upgrade** | Melakukan pembaruan paket sistem via `dnf update & upgrade` |
| **c** | **Install Dependencies** | Instalasi paket `git`, `curl`, `zip`, `python3`, `python3-pip` |
| **d** | **Install Docker** | Instalasi Docker Engine, start service, dan konfigurasi user group |

## 🛠️ Cara Penggunaan

Silakan jalankan perintah berikut pada terminal server Anda:

```bash
# 1. Clone repository ini
git clone [https://github.com/naisauliaa/devops-server-starter.git](https://github.com/naisauliaa/devops-server-starter.git)

# 2. Masuk ke direktori
cd devops-server-starter

# 3. Berikan izin eksekusi pada script
chmod +x setup_server.sh

# 4. Jalankan script (wajib menggunakan sudo)
sudo ./setup_server.sh
