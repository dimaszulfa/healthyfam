import 'package:flutter/material.dart';
import 'package:healthyfam/login/daftar.dart';
import 'package:healthyfam/login/loginemail.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.language, color: Colors.black),
            onPressed: () {
              // Aksi untuk memilih bahasa
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Pilih Bahasa'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          title: Text('English'),
                          onTap: () {
                            // Pilih bahasa Inggris
                            Navigator.of(context).pop();
                          },
                        ),
                        ListTile(
                          title: Text('Bahasa Indonesia'),
                          onTap: () {
                            // Pilih Bahasa Indonesia
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.help_outline, color: Colors.black),
            onPressed: () {
              // Aksi untuk bantuan
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Bantuan'),
                    content: Text('Aplikasi HEALTHYFAM.'),
                    actions: <Widget>[
                      TextButton(
                        child: Text('Tutup'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 252, 252, 252),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(height: 100),
              Image.asset(
                'gambar/healthyfam.png',
                width: 161,
                height: 176,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              const Text(
                'HEALTHYFAM',
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 40,
                  color: Color.fromARGB(255, 15, 14, 14),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 14),
              Container(
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                },
                child: GestureDetector(
                  onTap: () {
                  },
                  child: const Text(
                    'Masuk',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffffffff),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 122, 182, 230),
                  minimumSize: const Size(325, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {
                  // Aksi untuk menavigasi ke halaman pendaftaran
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DaftarPenggunaBaruPage()));
                },
                child: GestureDetector(
                  onTap: () {
                  },
                child: const Text(
                  'Daftar',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffffffff),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ),
              ),
              const SizedBox(height: 80),
            ],
          ),
        ],
      ),
    );
  }
}
