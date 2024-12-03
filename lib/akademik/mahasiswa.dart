// Class untuk merepresentasikan Mahasiswa
class Mahasiswa {
  // Properties Mahasiswa
  String nim; // NIM mahasiswa
  String nama; // Nama mahasiswa
  int semester; // Semester saat ini

  // Constructor untuk inisialisasi data mahasiswa
  Mahasiswa(this.nim, this.nama, this.semester);

  // Method untuk menampilkan informasi mahasiswa
  void tampilkanInfo() {
    print('NIM: $nim'); // Menampilkan NIM
    print('Nama: $nama'); // Menampilkan nama
    print('Semester: $semester'); // Menampilkan semester
  }
}
