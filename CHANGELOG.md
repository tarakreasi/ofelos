# Changelog

Semua perubahan penting pada proyek **Ofelos** akan dicatat di file ini.

## [Unreleased] - 2025-12-25

### Fixed
- **Konflik Gem `listen`**: Memperbarui versi gem `listen` ke `~> 3.5` untuk mematuhi persyaratan Rails 7 dan menghindari kesalahan aktivasi gem.
- **Versi Migrasi ActiveRecord**: Menambahkan penentu versi `[5.0]` pada file migrasi `CreateCkeditorAssets` yang sebelumnya menyebabkan kegagalan saat menjalankan `rake db:migrate` karena pewarisan langsung dari `ActiveRecord::Migration` tidak lagi didukung di versi Rails yang lebih baru.
- **Konfigurasi Database**: Memastikan `config/database.yml` dikonfigurasi dengan benar untuk menggunakan SQLite3 di lingkungan lokal.

### Changed
- **Instruksi Pengaturan**: Memperbarui panduan instalas di README untuk menggunakan binstubs (`./bin/bundle`, `./bin/rake`) demi konsistensi dependensi.
