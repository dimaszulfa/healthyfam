import 'package:flutter/material.dart';
import 'package:healthyfam/profile/profilepage.dart';
import 'package:healthyfam/userhomepage/fiturlainya.dart';
import 'package:healthyfam/userhomepage/homepage.dart';

// Kelas utama yang merupakan StatefulWidget
class Navigasi extends StatefulWidget {
  @override
  _NavigasiState createState() => _NavigasiState();
}

// State dari StatefulWidget Navigasi
class _NavigasiState extends State<Navigasi> {
  int _currentIndex = 0; // Menyimpan indeks tab yang sedang aktif

  // Daftar widget yang akan ditampilkan sesuai dengan tab yang dipilih
  final List<Widget> _children = [
    HomePage1(), // Halaman HomePage
    FiturLainnyaPage(), // Halaman Fitur-Fitur
    ProfilePage(), // Halaman Profil
  ];

  // Fungsi yang dipanggil ketika tab di BottomNavigationBar ditekan
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index; // Mengubah indeks tab yang sedang aktif
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Menampilkan halaman sesuai dengan tab yang dipilih
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // Mengatur fungsi yang dipanggil saat tab ditekan
        currentIndex: _currentIndex, // Mengatur tab yang sedang aktif
        selectedItemColor: Color(0xFF55705A), // Warna item yang dipilih
        unselectedItemColor: Colors.grey, // Warna item yang tidak dipilih
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // Ikon untuk tab HomePage
            label: 'Homepage', // Label untuk tab HomePage
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list), // Ikon untuk tab Fitur-Fitur
            label: 'Fitur-Fitur', // Label untuk tab Fitur-Fitur
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), // Ikon untuk tab Profil
            label: 'Profile', // Label untuk tab Profil
          ),
        ],
      ),
    );
  }
}
