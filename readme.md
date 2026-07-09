# Sistem Penggajian Karyawan - Perusahaan Bumi Mas Gold

Aplikasi ini adalah Sistem Informasi Penggajian (Payroll System) berbasis web yang dikembangkan sebagai aplikasi skripsi untuk mengelola proses penggajian seluruh karyawan di **Perusahaan Bumi Mas Gold**. Aplikasi ini dibangun menggunakan framework PHP CodeIgniter dan database MySQL.

## 🚀 Fitur Utama

- **Manajemen Karyawan (Pegawai)**: Mengelola data induk karyawan, informasi personal, dan departemen.
- **Manajemen Departemen & Jabatan**: Mengatur struktur organisasi dan posisi karyawan.
- **Sistem Absensi**: Pencatatan kehadiran (masuk/pulang) beserta bukti absensi.
- **Manajemen Cuti**: Pengajuan, persetujuan, dan pencatatan cuti/izin/sakit karyawan.
- **Proses Penggajian (Payroll)**: Perhitungan gaji otomatis berdasarkan kehadiran, cuti, potongan, dan tunjangan.
- **Laporan & Cetak Slip Gaji**: Pembuatan laporan penggajian secara berkala dan fitur cetak slip gaji untuk setiap karyawan.

## 🛠️ Teknologi yang Digunakan

- **Bahasa Pemrograman**: PHP
- **Framework**: CodeIgniter 3 (CI)
- **Database**: MySQL / MariaDB (File dump tersedia di `payrol.sql`)
- **Web Server**: Apache (Dapat dijalankan melalui Laragon / XAMPP)
- **Frontend**: HTML, CSS, JavaScript, dan framework UI (seperti Bootstrap)

## 📂 Struktur Direktori Utama

- `/application` : Berisi core kode aplikasi CodeIgniter (Controllers, Models, Views, Config).
- `/system` : Folder sistem inti bawaan dari CodeIgniter.
- `/assets` : Tempat penyimpanan file statis seperti CSS, JS, dan gambar antarmuka.
- `/bukti` : Direktori untuk menyimpan file hasil unggahan (upload) seperti foto bukti absensi atau surat keterangan cuti.
- `payrol.sql` : File database dump untuk keperluan instalasi awal (struktur tabel beserta data dummy).
- `index.php` : File entry point dari aplikasi CodeIgniter.

## ⚙️ Cara Instalasi dan Konfigurasi

1. **Persiapan Server Lokal**: Pastikan Anda sudah menginstal web server lokal seperti Laragon, XAMPP, atau WAMP.
2. **Copy Project**: Pindahkan atau clone folder project ini ke dalam direktori root server lokal Anda (contoh: folder `www` untuk Laragon atau `htdocs` untuk XAMPP).
3. **Konfigurasi Database**:
   - Buka `phpMyAdmin` atau database manager lainnya.
   - Buat database baru, misalnya dengan nama `payrol`.
   - Lakukan proses _Import_ dan pilih file `payrol.sql` yang ada di root project ini.
4. **Penyesuaian Aplikasi**:
   - Buka file `application/config/database.php`.
   - Sesuaikan konfigurasi koneksi database (terutama `username`, `password`, dan `database` disesuaikan dengan yang dibuat pada langkah sebelumnya).
   - Buka file `application/config/config.php` dan sesuaikan parameter `$config['base_url']` jika aplikasi Anda dijalankan di path atau domain tertentu.
5. **Jalankan Aplikasi**: Buka browser Anda dan akses URL project, misalnya: `http://localhost/aplikasi_skripsi_pengajian/`.

## 👥 Informasi Pengembang

Aplikasi ini dikembangkan secara khusus sebagai pemenuhan syarat Tugas Akhir / Skripsi untuk memecahkan masalah sistem penggajian yang ada di Perusahaan Bumi Mas Gold.

---

*Dibuat untuk mempermudah, merapikan pencatatan, dan mengotomatisasi proses penggajian di Perusahaan Bumi Mas Gold agar lebih transparan dan efisien.*