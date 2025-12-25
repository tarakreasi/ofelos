# Ofelos: Jurnal Belajar Fullstack

Ofelos adalah sebuah proyek pribadi yang saya bangun sebagai sarana belajar pemrograman dan pengembangan aplikasi web secara fullstack. Proyek ini bukan sekadar kode, melainkan jejak langkah saya dalam memahami bagaimana teknologi bekerja dari hulu ke hilir.

## Filosofi Desain

Terinspirasi dari kesederhanaan sebuah buku catatan (OneNote), Ofelos hadir dengan antarmuka yang tenang dan fungsional. Saya mencoba menerapkan estetika Glassmorphism statis tanpa efek yang berlebihan, agar fokus utama tetap pada konten dan kemudahan navigasi.

### Mengapa Proyek Ini Ada?

- **Sarana Pembelajaran**: Mengasah kemampuan dalam ekosistem Ruby on Rails, CSS modern (Glassmorphism), integrasi editor teks (Quill.js), dan manajemen database.
- **Eksplorasi UI/UX**: Mencoba melahirkan pengalaman pengguna yang premium namun tetap ringan dan bersih.
- **Dokumentasi Perjalanan**: Sebuah tempat rendah hati untuk mencatat apa yang telah dipelajari dan apa yang sedang dikembangkan.

## Tentang Pengembang

Saya sedang menempuh perjalanan untuk menjadi pengembang fullstack yang handal. Proyek Ofelos ini adalah salah satu bentuk dedikasi saya untuk terus tumbuh, belajar dari kesalahan, dan merayakan progres kecil setiap harinya.

## Cara Menjalankan Proyek

1. **Persiapan**: Pastikan Ruby (versi 3.2+) sudah terpasang di sistem Anda.
2. **Instalasi Dependensi**: 
   Gunakan binstub lokal untuk memastikan semua gem terpasang sesuai dengan `Gemfile`:
   ```bash
   ./bin/bundle install
   ```
3. **Persiapan Database**: 
   Jalankan migrasi untuk menyiapkan skema database SQLite lokal:
   ```bash
   ./bin/rake db:migrate
   ```
4. **Menjalankan Server**: 
   Nyalakan server Rails untuk mulai menjelajahi aplikasi:
   ```bash
   ./bin/rails server
   ```
   Aplikasi akan tersedia di [http://localhost:3000](http://localhost:3000).

5. **Informasi Login (Admin)**:
   Gunakan kredensial berikut untuk masuk ke panel admin:
   - **Email**: `admin@ofelos.dev`
   - **Password**: `password123`

---
*Dibuat dengan semangat belajar oleh Tara Kreasi*
