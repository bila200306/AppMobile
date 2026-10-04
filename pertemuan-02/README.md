Laundry

**Nama:** Nabila Innas  
**NIM:** 1124160217

## Deskripsi

Program ini merupakan program sederhana untuk menghitung biaya laundry berdasarkan berat laundry dan jenis layanan yang dipilih.

Program menggunakan konsep **Abstraction, Data, Decomposition, Algorithm**, serta beberapa skenario pengujian berdasarkan Business Rules.

## Business Rules

| Kode | Business Rule |
|---|---|
| BR-01 | Tarif laundry adalah Rp7.000 per kg |
| BR-02 | Jika berat laundry kurang dari 2 kg, maka berat yang dihitung adalah 2 kg |
| BR-03 | Layanan Express mendapatkan tambahan biaya sebesar 50% |
| BR-04 | Berat laundry harus lebih dari 0 kg |

## Struktur Program

### 1. Abstraction

Program menggunakan:

- `enum Layanan` untuk membedakan layanan Reguler dan Express.
- `enum LaundryStatus` untuk menentukan status proses laundry.
- `class Laundry` untuk menyimpan data pelanggan, berat, dan layanan.

### 2. Data

Program menggunakan list:

`laundries`

List tersebut digunakan untuk menyimpan data laundry yang berhasil diproses.

### 3. Decomposition

Program dibagi menjadi beberapa fungsi:

- `isValidWeight()` → memeriksa apakah berat lebih dari 0 kg.
- `getCalculatedWeight()` → menentukan berat yang digunakan dalam perhitungan.
- `calculateBasePrice()` → menghitung harga dasar laundry.
- `calculateTotal()` → menghitung total berdasarkan jenis layanan.

### 4. Algorithm

Fungsi `processLaundry()` menjalankan proses laundry dengan urutan:

1. Memvalidasi berat laundry.
2. Menentukan berat yang digunakan.
3. Menghitung harga dasar.
4. Menghitung total berdasarkan layanan.
5. Menyimpan data laundry yang berhasil diproses.
6. Menampilkan hasil transaksi.

## Test Scenario

### Skenario 1 — Reguler

- Nama: Nia
- Berat: 3 kg
- Layanan: Reguler
- Total: Rp21.000
- Status: Berhasil

### Skenario 2 — BR-02

- Nama: Nisa
- Berat: 1 kg
- Layanan: Reguler
- Berat yang dihitung: 2 kg
- Total: Rp14.000
- Status: Berhasil

### Skenario 3 — BR-03

- Nama: Nina
- Berat: 4 kg
- Layanan: Express
- Harga dasar: Rp28.000
- Tambahan Express 50%
- Total: Rp42.000
- Status: Berhasil

### Skenario 4 — BR-04

- Nama: -
- Berat: 0 kg
- Status: Berat laundry tidak valid

### Skenario 5 — BR-04

- Nama: -
- Berat: -2 kg
- Status: Berat laundry tidak valid

## Hasil Pengujian

Dari 5 skenario pengujian:

- 3 transaksi berhasil diproses.
- 2 transaksi ditolak karena berat tidak valid.
- Berat kurang dari 2 kg berhasil dihitung sebagai 2 kg.
- Layanan Express berhasil mendapatkan tambahan 50%.
- Data transaksi yang berhasil ditampilkan menggunakan perulangan.

**Total transaksi berhasil: 3**