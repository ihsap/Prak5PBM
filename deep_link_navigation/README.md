# Deep Link Navigation

Dokumentasi berikut memuat tangkapan layar dari aplikasi dengan navigasi *deep link*, lengkap dengan penjelasan dan keterkaitan terhadap widget yang digunakan.

---

### 1. Halaman Splash Screen
![Image](https://github.com/user-attachments/assets/99257b62-fc08-4fe7-82c0-5918cf355251)

**Keterangan:**  
Halaman pembuka aplikasi yang muncul sesaat setelah aplikasi dijalankan.

**Widget Terkait:**  
- `SplashScreen` (custom widget)  
- `Scaffold`, `Center`, `Image.asset`, `Future.delayed` (untuk navigasi otomatis)

---

### 2. Halaman Onboarding
![Image](https://github.com/user-attachments/assets/8b91d3bd-1cfe-481c-bba4-c308e556e1f9)

**Keterangan:**  
Halaman perkenalan aplikasi yang menampilkan fitur-fitur utama kepada pengguna baru.

**Widget Terkait:**  
- `PageView`, `Column`, `Text`, `Image.asset`, `ElevatedButton`  
- Navigasi menggunakan `Navigator.pushReplacement`

---

### 3. Halaman Login
![Image](https://github.com/user-attachments/assets/77f96f02-2270-42da-bdf3-f60d2207569d)

**Keterangan:**  
Formulir login yang digunakan untuk mengautentikasi pengguna.

**Widget Terkait:**  
- `TextFormField`, `Form`, `ElevatedButton`, `Column`, `Text`, `GestureDetector`  
- Validasi dengan `FormState` dan routing dengan `Navigator.pushNamed`

---

### 4. Halaman Home
![Image](https://github.com/user-attachments/assets/ab14839e-725c-46b3-9548-26df30360c12)

**Keterangan:**  
Halaman utama setelah pengguna berhasil masuk, menampilkan konten atau fitur inti aplikasi.

**Widget Terkait:**  
- `Scaffold`, `AppBar`, `BottomNavigationBar`, `ListView`, `Card`, `Text`

---

### 5. Halaman Detail Item (Melalui Deep Link)
![Image](https://github.com/user-attachments/assets/857bb0f7-e211-475e-85bf-cba457f003b8)

**Keterangan:**  
Halaman detail konten/item yang dapat diakses melalui *deep link* langsung (misal: `myapp://item/123`).

**Widget Terkait:**  
- `MaterialPageRoute`, `RouteSettings`, `onGenerateRoute`  
- `DeepLinkHandler`, `Uri.parse`, dan widget seperti `Text`, `Image.network`, `Column`

---

Semua halaman ini saling terhubung melalui navigasi yang mendukung *deep linking*, memudahkan pengguna untuk langsung diarahkan ke halaman tertentu dari luar aplikasi.
