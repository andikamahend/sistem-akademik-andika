// Class untuk merepresentasikan Mata Kuliah
class MataKuliah {
  // Properties Mata Kuliah
  String kode; // Kode mata kuliah
  String nama; // Nama mata kuliah
  int sks; // SKS mata kuliah

  // Constructor untuk inisialisasi data mata kuliah
  MataKuliah(this.kode, this.nama, this.sks);

  // Method untuk menampilkan informasi mata kuliah
  void tampilkanInfo() {
    print('Kode: $kode'); // Menampilkan kode mata kuliah
    print('Nama: $nama'); // Menampilkan nama mata kuliah
    print('SKS: $sks'); // Menampilkan jumlah SKS
  }
}
