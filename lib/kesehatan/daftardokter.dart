import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class DaftarDokterPage extends StatelessWidget {
  final List<Dokter> dokterList = [
    Dokter(
      foto: 'gambar/healthyfam.png',
      nama: 'Puskesmas Banyudono 2',
      rating: 4.9,
      bagian: 'Unit Kesehatan',
      nomer: '+62 81249628902',
    ),
    Dokter(
      foto: 'gambar/dokter1.png',
      nama: 'Dr. Arief Soleh',
      rating: 4.7,
      bagian: 'Poli Paru',
      nomer: '+62 811 222 333 45',
    ),
    Dokter(
      foto: 'gambar/dokter2.jpg',
      nama: 'Dr. Amelia Putri',
      rating: 4.8,
      bagian: 'Poli Gigi',
      nomer: '+62 811 222 333 46',
    ),
  ];

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
        title: Text('Daftar Dokter dan Puskesmas'),
      ),
      body: ListView.builder(
        itemCount: dokterList.length,
        itemBuilder: (context, index) {
          return DokterCard(dokter: dokterList[index]);
        },
      ),
    );
  }
}

class Dokter {
  final String foto;
  final String nama;
  final double rating;
  final String bagian;
  final String nomer;

  Dokter({
    required this.foto,
    required this.nama,
    required this.rating,
    required this.bagian,
    required this.nomer,
  });
}

class DokterCard extends StatelessWidget {
  final Dokter dokter;

  DokterCard({required this.dokter});

  void _launchWhatsApp(String number) async {
    final url = 'https://wa.me/$number';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchWhatsApp(dokter.nomer);
      },
      child: Card(
        margin: EdgeInsets.all(10.0),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(dokter.foto),
                radius: 30.0,
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dokter.nama,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(dokter.bagian),
                    SizedBox(height: 5.0),
                    Row(
                      children: [
                        Text('${dokter.rating}'),
                        SizedBox(width: 5.0),
                        Icon(Icons.star, color: Colors.yellow[700]),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Text(dokter.nomer),
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
