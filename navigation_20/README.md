# Navigation 2.0

Aplikasi Flutter ini merupakan contoh implementasi **Navigation 2.0** yang menampilkan daftar item dan halaman detail untuk setiap item. Setiap tampilan dibuat dengan navigasi antar halaman menggunakan `Navigator`.

## 📱 Tampilan Aplikasi

### 🏠 Halaman Home

- Menampilkan daftar item (`Item 1`, `Item 2`, `Item 3`)
- Setiap item dapat ditekan untuk membuka halaman detail
- Widget utama yang digunakan:
  - `ListView`
  - `ListTile`
  - `Navigator`

![Home](https://github.com/user-attachments/assets/2b76b500-59d1-49bc-bb63-72f4e442af69)

---

### 📄 Halaman Detail: Item 1

- Menampilkan informasi lengkap dari `Item 1`
- Terdapat tombol untuk kembali ke halaman Home
- Widget utama yang digunakan:
  - `Scaffold`
  - `Text`
  - `ElevatedButton`
  - `Navigator.pop`

![Detail Item 1](https://github.com/user-attachments/assets/a0f38990-cd4d-4867-b22a-904aae2cc5ea)

---

### 📄 Halaman Detail: Item 2

- Menampilkan informasi lengkap dari `Item 2`
- Widget dan fungsionalitas sama seperti halaman detail lainnya

![Detail Item 2](https://github.com/user-attachments/assets/b23c9776-9af5-43c5-8a0e-fab6f4441802)

---

### 📄 Halaman Detail: Item 3

- Menampilkan informasi lengkap dari `Item 3`
- Widget dan fungsionalitas sama seperti halaman detail lainnya

![Detail Item 3](https://github.com/user-attachments/assets/97a78744-c98a-44de-bcac-72bc2c86b02b)
