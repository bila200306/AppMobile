// =============================================
// Laundry
// Nama : Nabila Innas
// NIM  : 1124160217
// =============================================

// ---------- ABSTRACTION ----------

enum Layanan {
  Reguler,
  Express,
}

enum LaundryStatus {
  success,
  invalidWeight,
}

class Laundry {
  final String nama;
  final double berat;
  final Layanan layanan;

  Laundry(this.nama, this.berat, this.layanan);
}

// ---------- DATA ----------

const double tarifReguler = 7000;
const double minimumBerat = 2;
const double tambahanExpress = 0.5;

final List<Laundry> laundries = [];

// ---------- DECOMPOSITION ----------

// BR-04 : Berat laundry harus lebih dari 0 kg
bool isValidBerat(double berat) {
  return berat > 0;
}

// BR-02 : Jika berat kurang dari 2 kg,
// maka berat yang dihitung adalah 2 kg
double hitungBerat(double berat) {
  if (berat < minimumBerat) {
    return minimumBerat;
  }
  return berat;
}

// BR-01 : Tarif laundry Rp7.000/kg
double hitungTotal(double berat, double tarif) {
  return berat * tarif;
}

// BR-03 : Layanan Express mendapat tambahan 50%
double hitungTotalLayanan(double basePrice, Layanan layanan) {
  switch (layanan) {
    case Layanan.Reguler:
      return basePrice;

    case Layanan.Express:
      return basePrice * (1 + tambahanExpress);
  }
}

// ---------- ALGORITHM ----------

LaundryStatus prosesLaundry(Laundry laundry) {
  // Validasi berat laundry
  if (!isValidBerat(laundry.berat)) {
    print('Nama           : ${laundry.nama}');
    print('Berat asli     : ${laundry.berat} kg');
    print('Layanan        : ${laundry.layanan.name}');
    print('Status         : Berat laundry tidak valid');

    return LaundryStatus.invalidWeight;
  }

  // Menentukan berat yang digunakan
  final beratLaundry = hitungBerat(laundry.berat);

  // Menghitung harga dasar
  final totalAwal = hitungTotal(
    beratLaundry,
    tarifReguler,
  );

  // Menghitung total harga
  final totalAkhir = hitungTotalLayanan(
    totalAwal,
    laundry.layanan,
  );

  // Menyimpan laundry yang berhasil
  laundries.add(laundry);

  print('Nama           : ${laundry.nama}');
  print('Berat asli     : ${laundry.berat} kg');
  print('Berat dihitung : $beratLaundry kg');
  print('Layanan        : ${laundry.layanan.name}');
  print('Tarif          : Rp${tarifReguler.toStringAsFixed(0)}/kg');
  print('Harga dasar    : Rp${totalAwal.toStringAsFixed(0)}');

  if (laundry.layanan == Layanan.Express) {
    print('Tambahan       : 50%');
  }

  print('Total harga    : Rp${totalAkhir.toStringAsFixed(0)}');
  print('Status         : Laundry berhasil diproses');

  return LaundryStatus.success;
}

// ---------- STATUS MESSAGE ----------

String toMessage(LaundryStatus status) {
  switch (status) {
    case LaundryStatus.success:
      return 'Laundry Berhasil';

    case LaundryStatus.invalidWeight:
      return 'Berat Laundry Tidak Valid';
  }
}

// ---------- TEST SCENARIO ----------

void main() {
  // ===========================================
  // SKENARIO 1
  // 3 kg x Rp7.000 = Rp21.000
  // ===========================================

  print('=== Skenario 1 (Reguler) ===');

  final status1 = prosesLaundry(
    Laundry('Nia', 3, Layanan.Reguler),
  );

  print(toMessage(status1));
  print('');

  // ===========================================
  // SKENARIO 2 - BR-02
  // 1 kg dihitung menjadi 2 kg
  // 2 kg x Rp7.000 = Rp14.000
  // ===========================================

  print('=== Skenario 2 (Reguler - BR-02) ===');

  final status2 = prosesLaundry(
    Laundry('Nisa', 1, Layanan.Reguler),
  );

  print(toMessage(status2));
  print('');

  // ===========================================
  // SKENARIO 3 - BR-03
  // 4 kg x Rp7.000 = Rp28.000
  // Express +50% = Rp42.000
  // ===========================================

  print('=== Skenario 3 (Express - BR-03) ===');

  final status3 = prosesLaundry(
    Laundry('Nina', 4, Layanan.Express),
  );

  print(toMessage(status3));
  print('');

  // ===========================================
  // SKENARIO 4 - BR-04
  // Berat 0 kg tidak valid
  // ===========================================

  print('=== Skenario 4 (Invalid Berat - BR-04) ===');

  final status4 = prosesLaundry(
    Laundry('Nani', 0, Layanan.Reguler),
  );

  print(toMessage(status4));
  print('');

  // ===========================================
  // SKENARIO 5 - BR-04
  // Berat negatif tidak valid
  // ===========================================

  print('=== Skenario 5 (Invalid Berat - BR-04) ===');

  final status5 = prosesLaundry(
    Laundry('Nunu', -1, Layanan.Express),
  );

  print(toMessage(status5));
  print('');

  // ===========================================
  // DATA LAUNDRY BERHASIL
  // ===========================================

  print('=== Data Laundry Berhasil ===');

  for (final laundry in laundries) {
    print(
      'Nama: ${laundry.nama}, '
      'Berat: ${laundry.berat} kg, '
      'Layanan: ${laundry.layanan.name}',
    );
  }

  print('Total Laundry Berhasil: ${laundries.length}');
}