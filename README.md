# Praktikum Navigasi di Flutter

## 📌 Tujuan Praktikum

Praktikum ini bertujuan untuk:

- Memahami berbagai pendekatan navigasi di Flutter:  
  **Named Routes**, **Navigator 2.0**, **Nested Navigation**, dan **Deep Linking**.
- Menguji dan menjalankan empat aplikasi Flutter dari repositori GitHub yang masing-masing menggunakan jenis navigasi berbeda.
- Menganalisis cara kerja kode navigasi melalui observasi, eksperimen, dan dokumentasi dalam laporan praktikum.
- Mengembangkan keterampilan debugging serta dokumentasi teknis yang baik dalam pengembangan aplikasi Flutter.

---

## 🧭 Jenis Navigasi dalam Flutter

### 1. Named Routes
Navigasi menggunakan nama rute (`String`) yang telah didefinisikan di awal aplikasi.
- **Contoh**: `Navigator.pushNamed(context, '/home');`
- **Kelebihan**: Struktur navigasi lebih rapi, cocok untuk aplikasi dengan banyak halaman.
- **Penggunaan**: Menambahkan rute di `MaterialApp.routes`.

---

### 2. Navigator 2.0
Navigasi deklaratif dengan kontrol penuh terhadap stack halaman, cocok untuk aplikasi kompleks.
- **Komponen utama**: `Router`, `RouteInformationParser`, `RouterDelegate`.
- **Kelebihan**: Dapat menangani autentikasi, sinkronisasi URL (web), dan state management dengan lebih baik.
- **Penggunaan**: Cocok untuk aplikasi berskala besar atau Flutter Web.

---

### 3. Nested Navigation
Navigasi bersarang, biasanya digunakan di dalam `BottomNavigationBar` atau `TabBar`.
- **Kelebihan**: Setiap tab memiliki stack navigasinya sendiri.
- **Contoh**: Masing-masing tab memiliki `Navigator` lokal.
- **Penggunaan**: Ideal untuk aplikasi dengan struktur multi-tab.

---

### 4. Deep Linking
Navigasi ke halaman tertentu melalui URL atau tautan eksternal.
- **Contoh**: Akses langsung ke halaman detail dengan link seperti `myapp://article/42`.
- **Kelebihan**: Terintegrasi dengan sistem (browser, email, notifikasi).
- **Penggunaan**: Mendukung Flutter Web dan Mobile.
