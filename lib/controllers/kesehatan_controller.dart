import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class KesehatanController extends GetxController{
  RxList<MedicalRecord> medicalRecords = <MedicalRecord>[].obs;

  void addMedicalRecords(MedicalRecord medicalRecord){
      medicalRecords.add(medicalRecord);
  }
  
}


class MedicalRecord {
  DateTime date;
  String petugasKesehatan;
  String namaPasien;
  String keluhan;
  String diagnosa;
  String kategoriPenyakit;
  String catatanObat;

  MedicalRecord({
    required this.date,
    required this.petugasKesehatan,
    required this.namaPasien,
    required this.keluhan,
    required this.diagnosa,
    required this.kategoriPenyakit,
    required this.catatanObat,
  });
}
