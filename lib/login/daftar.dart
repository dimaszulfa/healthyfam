import 'package:flutter/material.dart';
import 'package:healthyfam/login/loginemail.dart';

class DaftarPenggunaBaruPage extends StatefulWidget {
  @override
  _DaftarPenggunaBaruPageState createState() => _DaftarPenggunaBaruPageState();
}

class _DaftarPenggunaBaruPageState extends State<DaftarPenggunaBaruPage> {
  TextEditingController nikController = TextEditingController();
  int nikLength = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Add your back navigation code here
            Navigator.pop(context);
          },
        ),
        title: Text("Lengkapi Identitas Diri"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Agar anda dapat terhubung dengan fasilitas kesehatan",
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 16),
              Text(
                "Email *",
                style: TextStyle(fontSize: 16),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Masukkan Email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Nomor Telepon",
                style: TextStyle(fontSize: 16),
              ),
              Row(
                children: [
                  Text(
                    "+62",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "Masukkan Nomor Telepon",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                "Kewarganegaraan *",
                style: TextStyle(fontSize: 16),
              ),
              DropdownButtonFormField<String>(
                items: [
                  DropdownMenuItem(value: "WNI", child: Text("Warga Negara Indonesia")),
                  DropdownMenuItem(value: "WNA", child: Text("Warga Negara Asing")),
                ],
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: "Pilih Kewarganegaraan",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Nama Lengkap *",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Nama harus sesuai dengan KTP",
                style: TextStyle(fontSize: 12),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Masukkan Nama Lengkap",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Tanggal Lahir *",
                style: TextStyle(fontSize: 16),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Masukkan Tanggal Lahir",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.datetime,
                onTap: () async {
                  DateTime? date = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  );
                },
              ),
              SizedBox(height: 16),
              Text(
                "NIK *",
                style: TextStyle(fontSize: 16),
              ),
              TextField(
                controller: nikController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Masukkan NIK",
                  border: OutlineInputBorder(),
                  counterText: "", // Hide the default counter text
                ),
                maxLength: 16,
                onChanged: (value) {
                  setState(() {
                    nikLength = value.length;
                  });
                },
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "$nikLength/16",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                  Expanded(
                    child: Text(
                      "Anda setuju untuk menerima informasi yang dikirim oleh petugas kesehatan",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Belum punya akun HEALTHYFAM? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      // Add your navigation code here
                    },
                    child: Text(
                      "Masuk",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
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
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
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
            ],
          ),
        ),
      ),
    );
  }
}