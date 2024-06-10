import 'package:flutter/material.dart';
import 'package:healthyfam/adminhomepage/artikelkesehatanadmin.dart';
import 'package:healthyfam/adminhomepage/listartikelpage.dart';
import 'package:healthyfam/adminhomepage/listcatatankesehatanpage.dart';

class AdminHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat Datang, Admin!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk tindakan admin di sini
              },
              child: Text('Tindakan Admin'),
            ),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk artikel kesehatan
                Navigator.push(context, MaterialPageRoute(builder: (context) => ListArtikelPage(),));
              },
              child: Text('Artikel Kesehatan'),
            ),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk artikel kesehatan
                Navigator.push(context, MaterialPageRoute(builder: (context) => ListCatatanKesehatan(),));
              },
              child: Text('Catatan Kesehatan'),
            ),
          ],
        ),
      ),
    );
  }
}
