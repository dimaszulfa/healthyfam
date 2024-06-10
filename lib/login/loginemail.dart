import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healthyfam/login/daftar.dart';
import 'package:healthyfam/login/password.dart';
import 'package:healthyfam/login/landing.dart';
import 'package:healthyfam/login/loginnomor.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Aksi untuk tombol back
            Navigator.pop(context, MaterialPageRoute(builder: (context)=>LandingPage()));
          },
        ),
        title: Text('Masukkan Email atau Nomor Telepon'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Email',
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: 
                  (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginNomorPage()));
                  },
                  child: Text(
                    'Nomor Telepon',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Masukkan Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Email bermasalah ?',
                style: TextStyle(color: Colors.red),
              ),
            ),
                 const SizedBox(height: 60),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 9, 99, 226),
                  minimumSize: const Size(325, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {
                  // Aksi untuk menavigasi ke halaman selanjutnya
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordPage()));
                },
                child: const Text(
                  'Mulai',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffffffff),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Belum punya akun? '),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DaftarPenggunaBaruPage()));
                    // Aksi untuk tombol daftar
                  },
                  child: Text(
                    'Daftar',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
