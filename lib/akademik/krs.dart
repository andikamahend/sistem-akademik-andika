// Mengimpor class yang dibutuhkan
import 'mahasiswa.dart';
import 'mata_kuliah.dart';

// Class untuk merepresentasikan KRS (Kartu Rencana Studi)
class KRS {
  // Properties KRS
  Mahasiswa mahasiswa; // Mahasiswa yang mengambil KRS
  List<MataKuliah> mataKuliahDiambil = []; // Daftar mata kuliah yang diambil

  // Constructor untuk inisialisasi KRS
  KRS(this.mahasiswa);

  // Method untuk menambah mata kuliah ke dalam KRS
  void tambahMataKuliah(MataKuliah mataKuliah) {
    mataKuliahDiambil.add(mataKuliah); // Menambah mata kuliah ke daftar
    print('Mata kuliah ${mataKuliah.nama} berhasil ditambahkan ke KRS Andika Mahendra Yudhistira.'); // Pesan sukses
  }

  // Method untuk mencetak KRS
  void cetakKRS() {
    print('\nKRS Mahasiswa:');
    mahasiswa.tampilkanInfo(); // Menampilkan data mahasiswa
    print('Mata Kuliah yang Diambil:');
    if (mataKuliahDiambil.isEmpty) {
      print('Tidak ada mata kuliah yang diambil.'); // Jika tidak ada mata kuliah
    } else {
      mataKuliahDiambil.forEach((mk) => mk.tampilkanInfo()); // Menampilkan daftar mata kuliah
    }
  }
}
