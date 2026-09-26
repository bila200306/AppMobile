NAMA : NABILA INNAS
NIM : 1124160217


void main() {
  print("=== SISTEM LAUNDRY ===");
  print("Selamat datang di Laundry Bersih Kilat!");

  // Nullable String
  String? namaPelanggan = "Rina";
  print("Nama pelanggan: $namaPelanggan");

  int jumlahPesanan = 2;
  print("Jumlah pesanan: $jumlahPesanan");

  // String dapat diubah menjadi null
  namaPelanggan = null;
  print("Nama pelanggan setelah diubah: $namaPelanggan");

  // Null Safety
  String? alamatPelanggan;
  alamatPelanggan = null;

  String alamat = alamatPelanggan ?? "Alamat belum tersedia";
  print("Alamat pelanggan: $alamat");

  // Final
  final String nomorNota = "LDR-2026-0098";
  print("Nomor nota: $nomorNota");

  // Const
  const String namaLaundry = "Bersih Kilat Laundry";
  print("Nama laundry: $namaLaundry");

  // Late Modifier
  late String namaPetugas;

  void isiNamaPetugas() {
    namaPetugas = "Sinta";
    print("Nama petugas: $namaPetugas");
  }

  isiNamaPetugas();

  // String
  String jenisLaundry = "Cuci Kering";
  String namaPelangganBaru = "Bagas";

  print("Jenis laundry: $jenisLaundry");
  print("Nama pelanggan: $namaPelangganBaru");

  // Integer
  int hargaPerKilo = 7000;
  int beratPakaian = 5;

  int totalHarga = hargaPerKilo * beratPakaian;

  print("Harga per kilogram: Rp$hargaPerKilo");
  print("Berat pakaian: $beratPakaian kg");
  print("Total harga: Rp$totalHarga");

  // Double
  double hargaCuciSepatu = 25000.5;
  double hargaSetrika = 15000.5;
  double hargaBedCover = 35000.5;

  double totalLayanan =
      hargaCuciSepatu + hargaSetrika + hargaBedCover;

  print("Total layanan tambahan: Rp$totalLayanan");

  // Num
  num diskon = 10;
  print("Diskon awal: $diskon%");

  diskon = 12.5;
  print("Diskon setelah berubah: $diskon%");

  // Bool
  bool pakaianSudahDicuci = true;
  bool pembayaranSudahLunas = false;

  bool pesananSelesai =
      pakaianSudahDicuci && pembayaranSudahLunas;

  print("Pesanan sudah selesai: $pesananSelesai");

  // List
  List<String> jenisLayanan = [
    "Cuci Kering",
    "Cuci Basah",
    "Setrika",
    "Cuci Sepatu"
  ];

  print("Layanan kedua: ${jenisLayanan[1]}");

  jenisLayanan.add("Cuci Bed Cover");

  print("Layanan tambahan: ${jenisLayanan[4]}");
  print("Daftar layanan laundry: $jenisLayanan");

  // Set
  Set<String> nomorPesanan = {
    "LDR001",
    "LDR002",
    "LDR003",
    "LDR001"
  };

  print("Nomor pesanan: $nomorPesanan");

  // Set tidak menyimpan data yang sama lebih dari satu kali

  // Map
  Map<String, dynamic> dataLaundry = {
    "nomorNota": "LDR004",
    "namaPelanggan": "Bagas",
    "jenisLayanan": "Cuci Kering",
    "berat": 4,
    "harga": 28000,
    "sudahBayar": true,
  };

  print("Nomor nota: ${dataLaundry['nomorNota']}");
  print("Nama pelanggan: ${dataLaundry['namaPelanggan']}");
  print("Jenis layanan: ${dataLaundry['jenisLayanan']}");
  print("Berat pakaian: ${dataLaundry['berat']} kg");
  print("Harga: Rp${dataLaundry['harga']}");
  print("Status pembayaran: ${dataLaundry['sudahBayar']}");

  // Object
  Object dataLaundryObject = "Pakaian Pelanggan";

  dataLaundryObject = 8;
  dataLaundryObject = true;

  print("Nilai Object terakhir: $dataLaundryObject");

  // List Object
  List<Object> dataPesanan = [
    "LDR005",
    6,
    true
  ];

  print("Data pesanan: $dataPesanan");

  // Dynamic
  dynamic statusLaundry = "Sedang Dicuci";

  statusLaundry = 3;
  statusLaundry = "Sudah Selesai";

  print("Status laundry terakhir: $statusLaundry");
}

