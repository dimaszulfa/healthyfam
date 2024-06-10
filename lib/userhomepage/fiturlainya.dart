import 'package:flutter/material.dart';
import 'package:healthyfam/kesehatan/daftarcatatpenyakit.dart';
import 'package:healthyfam/kesehatan/daftardokter.dart';

// Halaman yang menampilkan daftar fitur
class FiturLainnyaPage extends StatelessWidget {
  // Daftar fitur dengan judul, ikon, dan halaman tujuan
  final List<Map<String, dynamic>> fiturList = [
    {'title': 'Konsultasi Nakes', 'icon': Icons.local_hospital, 'page': DaftarDokterPage()},
    {'title': 'Catatan Kesehatan', 'icon': Icons.note, 'page': HealthRecordsPage()},
    {'title': 'Obat-obatan', 'icon': Icons.medical_services, 'page': ObatObatanPage()},
    {'title': 'Imunisasi', 'icon': Icons.vaccines, 'page': ImunisasiPage()},
    {'title': 'Surat Rujukan', 'icon': Icons.document_scanner, 'page': SuratRujukanPage()},
    {'title': 'Pengingat Minum Obat', 'icon': Icons.alarm, 'page': PengingatMinumObatPage()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FITUR LAINNYA'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          // Menyusun item dalam dua kolom
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
          ),
          itemCount: fiturList.length, // Jumlah item dalam daftar fitur
          itemBuilder: (context, index) {
            return Card(
              elevation: 4.0,
              child: InkWell(
                // Aksi ketika item ditekan
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => fiturList[index]['page']),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Menampilkan ikon fitur
                    Icon(
                      fiturList[index]['icon'],
                      size: 50.0,
                      color: Color(0xFF06B54C), // Warna heksa hijau
                    ),
                    SizedBox(height: 10.0),
                    // Menampilkan teks fitur
                    Text(
                      fiturList[index]['title'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// Halaman untuk fitur Konsultasi Nakes
class KonsultasiNakesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konsultasi Nakes'),
      ),
      body: Center(
        child: Text('Halaman Konsultasi Nakes'),
      ),
    );
  }
}

// Halaman untuk fitur Catatan Kesehatan
class CatatanKesehatanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catatan Kesehatan'),
      ),
      body: Center(
        child: Text('Halaman Catatan Kesehatan'),
      ),
    );
  }
}

// Halaman untuk fitur Obat-obatan
class ObatObatanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Obat-obatan'),
      ),
      body: Center(
        child: Text('Halaman Obat-obatan'),
      ),
    );
  }
}

// Halaman untuk fitur Imunisasi
class ImunisasiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Imunisasi'),
      ),
      body: Center(
        child: Text('Halaman Imunisasi'),
      ),
    );
  }
}

// Halaman untuk fitur Surat Rujukan
class SuratRujukanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Surat Rujukan'),
      ),
      body: Center(
        child: Text('Halaman Surat Rujukan'),
      ),
    );
  }
}

// Halaman untuk fitur Pengingat Minum Obat
class PengingatMinumObatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengingat Minum Obat'),
      ),
      body: Center(
        child: Text('Halaman Pengingat Minum Obat'),
      ),
    );
  }
}
