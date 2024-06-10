import 'package:flutter/material.dart';
import 'package:healthyfam/userhomepage/homepage.dart';

class HealthRecordDetailPage extends StatelessWidget {
  final String patientName;
  final String examinationDate;
  final String healthOfficer;
  final String complaint;
  final String diagnosis;
  final String diseaseCategory;
  final String noteForPatient;
  final String prescribedMedication;

  HealthRecordDetailPage({
    this.patientName = 'Ny. Salsabila',
    this.examinationDate = '01/05/2024',
    this.healthOfficer = 'Dr. Arief S',
    this.complaint = 'Sakit Kepala',
    this.diagnosis = 'Hipertensi',
    this.diseaseCategory = 'Kronis',
    this.noteForPatient = 'Pasien disarankan menjaga pola makan sehat',
    this.prescribedMedication = 'Metolazone 1x sehari',
  });

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
        title: Text('Detail Catatan kesehatan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dibuat pada tanggal : 01/05/2024 $examinationDate',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Petugas Kesehatan : Dr. Arief S $healthOfficer',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Pasien : Ny. Salsabila $patientName',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Hasil Pemeriksaan : ',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Keluhan Pasien : Sakit Kepala $complaint',
              style: TextStyle(fontSize: 14.0),
            ),
            Text(
              'Diagnosa : Hipertensi $diagnosis',
              style: TextStyle(fontSize: 14.0),
            ),
            Text(
              'Kategori Penyakit : Kronis $diseaseCategory',
              style: TextStyle(fontSize: 14.0),
            ),
            Text(
              'Catatan Untuk Pasien : Pasien disarankan menjaga pola makan sehat $noteForPatient',
              style: TextStyle(fontSize: 14.0),
            ),
            Text(
              'Obat yang Disarankan : Metolazone 1x sehari $prescribedMedication',
              style: TextStyle(fontSize: 14.0),
            ),
          ],
        ),
      ),
        bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 355,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    // Logika untuk berbagi catatan kesehatan
                  },
                  child: Text('Share Catatan Kesehatan'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HealthRecordDetailPage(
      patientName: 'Nama Pasien',
      examinationDate: '01/05/2024',
      healthOfficer: 'Dr. Dokter',
      complaint: 'Sakit Kepala',
      diagnosis: 'Hipertensi',
      diseaseCategory: 'Kronis',
      noteForPatient: 'Pasien disarankan...',
      prescribedMedication: 'metolazone 1x sehari',
    ),
  ));
}
