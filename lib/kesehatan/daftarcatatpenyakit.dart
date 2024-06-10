import 'package:flutter/material.dart';
import 'package:healthyfam/kesehatan/detilpenyakit.dart';
import 'package:healthyfam/userhomepage/homepage.dart';

class HealthRecordsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catatan Kesehatan'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context)=>HomePage1()));
          },
        ),
      ),
      body: ListView(
        children: [
          HealthRecordCard(
            photo: 'gambar/tensi.jpg', 
            diseaseName: 'Hipertensi',
            diseaseNote: 'Pasien Disarankan untuk melakukan pemeriksaan tekanan darah secara r....',
            checkupDate: '20-05-2024',
          ),
          HealthRecordCard(
            photo: 'gambar/timbangan.png', 
            diseaseName: 'Obesitas',
            diseaseNote: 'Pasien Disarankan untuk melakukan olahraga rutin dan makan-makanan ber...',
            checkupDate: '15-05-2024',
          ),
          // Tambahkan lebih banyak HealthRecordCard sesuai kebutuhan
        ],
      ),
    );
  }
}

class HealthRecordCard extends StatelessWidget {
  final String photo;
  final String diseaseName;
  final String diseaseNote;
  final String checkupDate;

  HealthRecordCard({
    required this.photo,
    required this.diseaseName,
    required this.diseaseNote,
    required this.checkupDate,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HealthRecordDetailPage()));
      },
      child: Card(
        margin: EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(
                photo,
                width: 50,
                height: 50,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      diseaseName,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(diseaseNote),
                    SizedBox(height: 5),
                    Text(
                      checkupDate,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
