// Mengimpor semua class dari folder akademik
// ignore_for_file: unused_local_variable

import 'dart:io'; // Import untuk membaca input dari pengguna
import '../lib/akademik/mahasiswa.dart';
import '../lib/akademik/mata_kuliah.dart';
import '../lib/akademik/krs.dart';
import '../lib/akademik/nilai.dart';

void main() {
  // Membuat data mahasiswa
  var mahasiswa = Mahasiswa('230103089', 'Andika Mahendra Yudhistira', 3); // Mahasiswa dengan NIM, nama, dan semester

  // Membuat data mata kuliah
  var mataKuliah1 = MataKuliah('MK001', 'Pemrograman Berbasis Objek', 3); // Mata kuliah 1
  var mataKuliah2 = MataKuliah('MK002', 'English 3', 3); // Mata kuliah 2
  var mataKuliah3 = MataKuliah('MK003', 'Rekayasa Perangkat Lunak', 3); // Mata kuliah 3

  // Membuat KRS untuk mahasiswa
  var krs = KRS(mahasiswa);
  krs.tambahMataKuliah(mataKuliah1); // Menambahkan mata kuliah 1 ke KRS
  krs.tambahMataKuliah(mataKuliah2); // Menambahkan mata kuliah 2 ke KRS
  krs.tambahMataKuliah(mataKuliah3); // Menambah mata kuliah 3 ke KRS
  krs.cetakKRS(); // Menampilkan KRS

  // Meminta input nilai dari pengguna
  print('\nMasukkan nilai untuk masing-masing mata kuliah:');

  // Input nilai mata kuliah 1
  stdout.write('${mataKuliah1.nama} (Kode: ${mataKuliah1.kode}): ');
  var inputNilai1 = _bacaNilaiDariInput();

  // Input nilai mata kuliah 2
  stdout.write('${mataKuliah2.nama} (Kode: ${mataKuliah2.kode}): ');
  var inputNilai2 = _bacaNilaiDariInput();

  // Input nilai mata kuliah 3
  stdout.write('${mataKuliah3.nama} (Kode: ${mataKuliah3.kode}): ');
  var inputNilai3 = _bacaNilaiDariInput();

  // Membuat data nilai untuk masing-masing mata kuliah
  var nilai1 = Nilai(mataKuliah1, inputNilai1); // Nilai untuk mata kuliah 1
  var nilai2 = Nilai(mataKuliah2, inputNilai2); // Nilai untuk mata kuliah 2
  var nilai3 = Nilai(mataKuliah3, inputNilai3); // Nilai untuk mata kuliah 3

  // Menampilkan transkrip nilai
  print('\nTranskrip Nilai:');
  nilai1.tampilkanNilai(); // Menampilkan nilai mata kuliah 1
  nilai2.tampilkanNilai(); // Menampilkan nilai mata kuliah 2
  nilai3.tampilkanNilai(); // Menampilkan nilai mata kuliah 3

  // Menghitung IPK
  double totalSKS = (mataKuliah1.sks + mataKuliah2.sks + mataKuliah3.sks).toDouble(); // Total SKS
  double totalNilai = (nilai1.nilai * mataKuliah1.sks) + 
                      (nilai2.nilai * mataKuliah2.sks) + 
                      (nilai3.nilai * mataKuliah3.sks); // Total nilai berbobot
  double ipk = totalNilai / totalSKS; // Menghitung IPK

  // Menampilkan IPK dengan grade
  print('\nIPK: ${_ipkDenganGrade(ipk)}'); // Menampilkan IPK dengan grade
}

// Fungsi untuk membaca nilai dari input dan memvalidasi agar selalu berupa double
double _bacaNilaiDariInput() {
  while (true) {
    try {
      var input = stdin.readLineSync(); // Membaca input dari terminal
      if (input == null || input.isEmpty) {
        throw FormatException('Input kosong!');
      }
      return double.parse(input); // Mengonversi ke double
    } catch (e) {
      print('Nilai yang dimasukkan tidak valid. Masukkan angka yang benar!');
      stdout.write('Coba lagi: ');
    }
  }
}

// Fungsi untuk menentukan grade berdasarkan IPK
String _ipkDenganGrade(double ipk) {
  String grade;

  if (ipk >= 80) {
    grade = 'A';
  } else if (ipk >= 70) {
    grade = 'B';
  } else if (ipk >= 55) {
    grade = 'C';
  } else if (ipk >= 40) {
    grade = 'D';
  } else {
    grade = 'E';
  }

  return '${ipk.toStringAsFixed(2)} ($grade)';
}
