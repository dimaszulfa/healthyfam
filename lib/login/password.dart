import 'package:flutter/material.dart';
import 'package:healthyfam/adminhomepage/homepageadmin.dart';
import 'package:healthyfam/login/daftar.dart';
import 'package:healthyfam/navbar.dart';

class PasswordPage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Masukkan Kode'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Masukkan Kode',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Kode bermasalah?',
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
                String kode = _controller.text;
                if (kode == '123') {
                  // Jika kode adalah '123', masuk sebagai pengguna
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Navigasi()));
                } else if (kode == '1234') {
                  // Jika kode adalah '1234', masuk sebagai admin
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AdminHomePage()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Kode tidak valid')),
                  );
                }
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DaftarPenggunaBaruPage()));
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
