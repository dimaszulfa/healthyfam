import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('gambar/profile_picture.jpg'), // Ganti dengan lokasi gambar profil Anda
            ),
            SizedBox(height: 20),
            Text(
              'Nama Pengguna',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'email@example.com', // Ganti dengan alamat email pengguna Anda
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk mengubah informasi profil
              },
              child: Text('Ubah Profil'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk keluar dari akun
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Ganti warna tombol sesuai kebutuhan
              ),
              child: Text('Keluar'),
            ),
          ],
        ),
      ),
    );
  }
}
