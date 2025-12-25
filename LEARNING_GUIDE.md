# Panduan Belajar Kode Ofelos

Selamat datang! Jika Anda membaca ini, kemungkinan besar Anda sedang belajar bagaimana aplikasi web dibangun menggunakan Ruby on Rails. Dokumen ini sengaja dibuat untuk membantu Anda memahami "mengapa" dan "bagaimana" kode di proyek ini ditulis.

Anggaplah ini sebagai tur berpemandu di dalam basis kode Ofelos.

---

## 1. Arsitektur & Struktur
Ofelos mengikuti pola standar **MVC (Model-View-Controller)** yang digunakan oleh Rails, namun dengan beberapa penyesuaian untuk menjaga kerapian:

- **Partials (`app/views/shared/` atau folder view lain)**:
  Anda akan melihat banyak penggunaan `<%= render '...' %>`. Kami memecah komponen UI yang kecil (seperti `_post_card.html.erb` atau `_flash_messages.html.erb`) agar kode utama tetap bersih dan komponen tersebut bisa dipakai ulang.
  
  *Pelajaran: Jangan takut memecah file view yang panjang menjadi potongan-potongan kecil yang logis.*

## 2. Sistem Desain: Deep Dark Glassmorphism
Tampilan visual Ofelos tidak dibuat secara acak. Kami menggunakan pendekatan sistematis di `app/assets/stylesheets/application.scss`.

### Variabel & Token
Alih-alih menyebarkan kode warna `#f97316` di mana-mana, kami mendefinisikannya sebagai variabel CSS:
```css
:root {
  --accent-primary: #f97316;
  --glass-bg: rgba(15, 23, 42, 0.6);
}
```
Ini memungkinkan kita mengubah tema seluruh aplikasi hanya dengan mengganti satu baris kode.

### Metodologi BEM (Block Element Modifier)
Kami menghindari penggunaan ID untuk styling. Sebagai gantinya, kami menggunakan konvensi penamaan kelas yang deskriptif:
- `.hero-section` (Blok)
- `.hero-title` (Elemen di dalam blok)
- `.btn-ofelos` (Blok)
- `.btn-sm` (Modifier untuk ukuran kecil)

*Pelajaran: CSS yang terstruktur adalah kunci agar tampilan web tidak "hancur" saat dikembangkan lebih lanjut.*

## 3. Fitur Sorotan: Integrasi Teks Editor
Salah satu tantangan terbesar dalam proyek ini adalah teks editor. Awalnya kami menggunakan CKEditor, namun menemui banyak kendala teknis. Kami kemudian beralih ke **Quill.js**.

### Mengapa Frontend-Only?
Kami tidak menggunakan gem Ruby untuk Quill, melainkan memuatnya lewat **CDN (Content Delivery Network)** langsung di `application.html.erb`. Ini membuat aplikasi lebih ringan dan mengurangi ketergantungan backend yang rumit.

### Trik "Hidden Input"
Bagaimana cara Rails menyimpan data dari Quill (JavaScript) ke database?
1. Kami membuat input tersembunyi (`hidden_field`) di dalam form.
2. Saat form disubmit, JavaScript menyalin isi HTML dari editor Quill ke dalam input tersembunyi tersebut.
3. Controller Rails menerima data seolah-olah itu adalah input teks biasa.

Anda bisa melihat implementasinya di `app/views/posts/_form.html.erb`.

## 4. Tantangan Untuk Anda
Jika Anda ingin menguji pemahaman Anda, cobalah lakukan hal-hal kecil berikut:

1. **Ubah Aksen Warna**: Buka `application.scss` dan ubah `--accent-primary` menjadi warna favorit Anda (misal: ungu atau hijau). Lihat bagaimana seluruh tampilan berubah seketika.
2. **Tambah Kolom**: Coba tambahkan kolom "Penulis" pada tabel Database Post dan tampilkan di halaman `show`.
3. **Kustomisasi Editor**: Lihat dokumentasi Quill.js dan coba tambahkan tombol "Strike-through" atau "Video" ke toolbar editor.

---
*Kode adalah puisi yang ditulis untuk mesin, namun dibaca oleh manusia. Tulislah dengan rapi.*
