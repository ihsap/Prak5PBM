# Nested Navigation

Berikut ini adalah dokumentasi visual dari aplikasi yang menerapkan **Nested Navigation** pada Flutter. Setiap gambar disertai dengan keterangannya serta relasinya terhadap widget Flutter yang relevan.

---

### 1. Tampilan Halaman Utama dengan Bottom Navigation Bar

![Image](https://github.com/user-attachments/assets/83f95f29-6eae-47bf-bbf2-78cc4b088cff)

- **Keterangan**: Halaman utama aplikasi dengan **BottomNavigationBar** sebagai navigasi utama antar halaman (Home, Jadwal, Akun).
- **Widget terkait**:
  - `Scaffold`
  - `BottomNavigationBar`
  - `IndexedStack` (untuk mempertahankan state masing-masing halaman)

---

### 2. Navigasi Menu Jadwal dengan Tab di Dalamnya

![Image](https://github.com/user-attachments/assets/183e204c-1460-44be-9dd2-91c8f4e62a07)

- **Keterangan**: Halaman "Jadwal" menampilkan dua tab: Kuliah dan Kegiatan. Ini contoh **nested navigation** karena memiliki tab navigation di dalam bottom navigation.
- **Widget terkait**:
  - `DefaultTabController`
  - `TabBar`
  - `TabBarView`

---

### 3. Navigasi Ke Detail Kegiatan

![Image](https://github.com/user-attachments/assets/52f42d8f-d96c-4e98-b005-68daed60f81a)

- **Keterangan**: Pengguna menavigasi ke halaman detail kegiatan dari daftar kegiatan. Ini menggunakan navigator dalam tab.
- **Widget terkait**:
  - `Navigator` (khusus dalam tab)
  - `MaterialPageRoute`
  - `ListView` (untuk menampilkan daftar kegiatan)

---

### 4. Halaman Akun dengan Pengaturan Profil

![Image](https://github.com/user-attachments/assets/afb12931-78b1-45e5-bc5b-fcefcae7f643)

- **Keterangan**: Halaman akun berisi informasi profil dan akses ke halaman pengaturan lainnya. Dapat dilakukan navigasi lokal dalam tab ini.
- **Widget terkait**:
  - `ListTile`
  - `Navigator` (lokal per tab)
  - `MaterialPageRoute`
