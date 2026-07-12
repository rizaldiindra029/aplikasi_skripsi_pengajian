# Sistem Informasi Penggajian Karyawan
**Perusahaan Bumi Mas Gold**

Aplikasi ini adalah Sistem Informasi Penggajian (Payroll System) berbasis web yang ditujukan untuk mengelola dan memfasilitasi proses penggajian seluruh karyawan di **Perusahaan Bumi Mas Gold**. Aplikasi ini dikembangkan sebagai pemenuhan untuk aplikasi skripsi.

## 🚀 Fitur Utama
- **Manajemen Data Karyawan**: Pengelolaan data induk karyawan, informasi personal, departemen, dan jabatan.
- **Sistem Absensi**: Pencatatan kehadiran (masuk/pulang) beserta kelola bukti absensi.
- **Manajemen Cuti**: Pengajuan, persetujuan, dan pencatatan cuti/izin/sakit karyawan.
- **Proses Penggajian (Payroll)**: Perhitungan gaji secara otomatis berdasarkan kehadiran, cuti, potongan, dan tunjangan.
- **Laporan & Cetak Slip Gaji**: Pembuatan laporan penggajian secara berkala dan fitur untuk mencetak slip gaji setiap karyawan.

## 🛠️ Teknologi yang Digunakan
- **Bahasa Pemrograman**: PHP
- **Framework**: CodeIgniter 3
- **Database**: MySQL / MariaDB (Tersedia di `payrol.sql`)
- **Web Server**: Apache (XAMPP / Laragon)
- **Frontend**: HTML, CSS, JavaScript, Bootstrap

## 📂 Struktur Direktori Utama
- `application/`: Berisi core logic aplikasi CodeIgniter (Controllers, Models, Views).
- `system/`: Folder core framework CodeIgniter.
- `assets/`: Tempat penyimpanan file statis (CSS, JS, dan gambar).
- `bukti/`: Direktori untuk menyimpan file upload seperti foto bukti absensi atau surat keterangan cuti.
- `payrol.sql`: File database dump untuk keperluan instalasi awal (struktur tabel beserta data dummy).
- `index.php`: File entry point dari aplikasi CodeIgniter.

## ⚙️ Cara Instalasi
1. Pastikan Anda sudah menginstal web server lokal seperti XAMPP atau Laragon.
2. Pindahkan/clone folder project ini ke dalam direktori root server lokal Anda (contoh: folder `htdocs` untuk XAMPP).
3. Buat database baru di phpMyAdmin (misal: `payrol`).
4. Import file `payrol.sql` yang ada di root project ke dalam database yang baru dibuat.
5. Sesuaikan konfigurasi database pada file `application/config/database.php` (username, password, dan nama database).
6. Sesuaikan konfigurasi base URL pada file `application/config/config.php` sesuai dengan letak folder project Anda.
7. Buka browser dan akses aplikasi melalui `http://localhost/aplikasi_skripsi_pengajian/`.

## 👨‍💻 Pengembang
- **Nama**: Rizaldi Indra Hermawan
- **NRP**: 191116013

---
*Aplikasi ini dikembangkan untuk mempermudah, merapikan pencatatan, dan mengotomatisasi proses penggajian di Perusahaan Bumi Mas Gold agar lebih transparan dan efisien.*