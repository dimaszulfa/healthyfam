import 'package:flutter/material.dart';
import 'package:healthyfam/userhomepage/homepage.dart';


class ArticlePage extends StatelessWidget {
  final String imagePath = 'gambar/gejala.png'; 
  final String title = 'Judul Artikel';
  final String content = '''
 Stroke merupakan penyakit yang datangnya tanpa pandang bulu. Hal ini lantaran penyakit stroke bisa menyerang siapa saja mulai dari remaja hingga lansia. Kenali gejala stroke agar dapat segera mendapat  penanganan yang tepat.
Gejala-Gejala Stroke
Dengan mengenali gejala stroke, seseorang dapat merasakan berbagai macam dampak mulai dari kecacatan fisik hingga kematian. Berikut ini beberapa gejala stroke yang sering disebut dengan "SeGeRa Ke RS":
1. Se
   Gejala atau ciri utama yang sering dirasakan oleh orang-orang sebelum terkena serangan stroke yaitu senyum tidak simetris. Senyum tidak simetris berarti seseorang saat tersenyum hanya mengarah pada satu sisi. Gejala senyum tidak simetris membuat seseorang cenderung sering tersedak dan kesulitan untuk minum.
2. Ge
   Penyakit stroke identik dengan kelumpuhan pada bagian tubuh tertentu atau bahkan keseluruhan. Ge atau gerak tubuh melemah secara mendadak menjadi pertanda datangnya penyakit stroke. Orang yang tubuhnya mendadak melemah biasanya cenderung lemas dan susah untuk bergerak.
3. Ra
   Bicara pelo/tiba-tiba tidak dapat bicara/tidak mengerti kata-kata/bicara tidak nyambung. Penderita stroke biasanya mendadak kesulitan berbicara ataupun kata yang diucapkan tidak jelas orang-orang menyebut gejala ini sebagai pelo.
4. Ke
  Kebas pada tubuh juga menjadi salah satu gejala stroke yang umum dialami oleh penderitanya. Tidak hanya kebas, penderita stroke akan mengalami gejala seperti separuh tubuh terasa kesemutan sehingga sulit untuk dikendalikan hingga digerakkan.
5. R
  Rabun pada mata yang terjadi secara tiba-tiba bisa juga menjadi pertanda datangnya penyakit stroke. Gejala ini perlu diperiksakan lebih lanjut untuk memastikan apakah rabun biasa atau petanda timbulnya penyakit stroke.
6. S
  Sakit kepala hebat yang belum pernah dirasakan sebelumnya turut menjadi tanda timbulnya penyakit stroke. Rasa pusing sebagai gejala stroke disertai dengan Tremor hingga sempoyongan. Gejala ini dipicu oleh gangguan keseimbangan pada tubuh sehingga terasa berputar dan gerakan sulit dikoordinasi.
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Aksi untuk tombol back
            Navigator.pop(context, MaterialPageRoute(builder: (context)=>HomePage1()));
          },
        ),
        title: Text('Detail Artikel'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imagePath),
              SizedBox(height: 16),
              Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                content,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
