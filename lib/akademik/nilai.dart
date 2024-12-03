// Mengimpor class yang dibutuhkan
import 'mata_kuliah.dart';

// Class untuk merepresentasikan Nilai
class Nilai {
  // Properties Nilai
  MataKuliah mataKuliah; // Mata kuliah terkait
  double nilai; // Nilai yang diperoleh

  // Constructor untuk inisialisasi nilai
  Nilai(this.mataKuliah, this.nilai);

  // Getter untuk menentukan grade berdasarkan nilai
  String get grade {
    if (nilai >= 80) return 'A'; // Grade A untuk nilai >= 85
    if (nilai >= 70) return 'B'; // Grade B untuk nilai >= 70
    if (nilai >= 55) return 'C'; // Grade C untuk nilai >= 55
    if (nilai >= 40) return 'D'; // Grade D untuk nilai >= 40
    return 'E'; // Grade E untuk nilai < 40
  }

  // Method untuk menampilkan informasi nilai
  void tampilkanNilai() {
    print('${mataKuliah.nama} (Kode: ${mataKuliah.kode}) - Nilai: $nilai (${grade})');
  }
}
