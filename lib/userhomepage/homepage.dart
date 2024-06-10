import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healthyfam/artikel/artikel.dart';
import 'package:healthyfam/kesehatan/daftarcatatpenyakit.dart';
import 'package:healthyfam/kesehatan/daftardokter.dart';
import 'package:healthyfam/kesehatan/detilpenyakit.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E4E4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 150.0,
                    width: double.infinity,
                    color: Colors.green[600],
                    child: Container(
                      margin: EdgeInsets.only(top: 26.0, left: 14.0),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                        },
                        child: Text(
                          "Hallo, Ny. Salsabila",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 64.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
                      margin: EdgeInsets.all(14.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildFeatureIcon(
                                context,
                                'gambar/nakes.png',
                                'Konsul Nakes',
                                DaftarDokterPage(),
                              ),
                              buildFeatureIcon(
                                context,
                                'gambar/catatan.png',
                                'catatan Kesehatan',
                                HealthRecordsPage(),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildFeatureIcon(
                                context,
                                'gambar/pill.png',
                                'Obat-obatan',
                                MedicationPage(),
                              ),
                              buildFeatureIcon(
                                context,
                                'gambar/lainnya.png',
                                'lainnya',
                                OthersPage(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              buildSectionTitle(
                context,
                "Catatan Kesehatan Anda",
                "Lihat Semua >",
              ),
              buildHealthRecordItem(
                context,
                "Senin, 19/08/2024",
                "Hipertensi",
                "Pasien Disarankan untuk melakukan pemeriksaan tekanan darah secara r....",
                HealthRecordDetailPage(),
              ),
              buildSectionTitle(
                context,
                "Baca Artikel Kesehatan",
                "Lihat Semua >",
              ),
              buildArticleItem(
                context,
                'gambar/gejala.png',
                "Mengenai Deteksi Dini Gejala Stroke",
                ArticlePage(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFeatureIcon(BuildContext context, String imagePath, String label, Widget targetPage) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => targetPage));
          },
          child: Image.asset(
            imagePath,
            height: 50.0,
            width: 50.0,
          ),
        ),
        SizedBox(height: 12.0),
        Text(
          label,
          style: TextStyle(fontSize: 13),
        ),
      ],
    );
  }

  Widget buildSectionTitle(BuildContext context, String title, String actionText) {
    return Container(
      margin: EdgeInsets.all(14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            actionText,
            style: TextStyle(
              color: Color(0xff06B54C),
              fontSize: 12.0,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHealthRecordItem(BuildContext context, String date, String title, String description, Widget targetPage) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => targetPage));
      },
      child: Container(
        margin: EdgeInsets.all(14.0),
        padding: EdgeInsets.all(14.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    description,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff605B5B),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              child: Image.asset(
                'gambar/back.png',
                height: 25.0,
                width: 25.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildArticleItem(BuildContext context, String imagePath, String title, Widget targetPage) {
    return Container(
      margin: EdgeInsets.all(14.0),
      padding: EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => targetPage));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath),
            SizedBox(height: 10.0),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Lihat Artikel >",
              style: TextStyle(
                color: Color(0xff06B54C),
                fontSize: 12.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MedicationPage extends StatelessWidget {
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

class OthersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lain-lainnya'),
      ),
      body: Center(
        child: Text('Halaman Lain-lainnya'),
      ),
    );
  }
}
