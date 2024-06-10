import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:healthyfam/adminhomepage/listcatatankesehatanpage.dart';
import 'package:healthyfam/controllers/kesehatan_controller.dart';
import 'package:healthyfam/login/loginemail.dart';
import 'package:intl/intl.dart';

class AddCatatanKesehatanPageAdmin extends StatefulWidget {
  @override
  _AddCatatanKesehatanPageAdminState createState() =>
      _AddCatatanKesehatanPageAdminState();
}

class _AddCatatanKesehatanPageAdminState
    extends State<AddCatatanKesehatanPageAdmin> {
  TextEditingController tanggalCOntroller = TextEditingController();
  TextEditingController petugasController = TextEditingController();
  TextEditingController pasienController = TextEditingController();
  TextEditingController keluhanController = TextEditingController();
  TextEditingController diagnosaController = TextEditingController();
  TextEditingController kategoriController = TextEditingController();
  TextEditingController catatanController = TextEditingController();
  TextEditingController obatController = TextEditingController();
  late DateTime selectedDate;

  KesehatanController controller = Get.put(
      KesehatanController()); // Rather Controller controller = Controller();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedDate = DateTime.now(); // Set tanggal awal sebagai waktu saat ini
  }

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
        title: Text("Input Catatan Kesehatan"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dibuat tanggal *",
                style: TextStyle(fontSize: 16),
              ),
              
              TextField(
                decoration: InputDecoration(
                  hintText: "Masukkan tanggal dibuat",
                  border: OutlineInputBorder(),
                ),
                controller : TextEditingController(text: DateFormat('yyyy-MM-dd').format(selectedDate)),
                keyboardType: TextInputType.datetime,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: selectedDate,
                    firstDate: selectedDate,
                    lastDate: DateTime(2101),
                  );

                  if (pickedDate != null && pickedDate != selectedDate) {
                    setState(() {
                      selectedDate = pickedDate;
                    });
                  }
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              TextField(
                controller: petugasController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Masukkan Petugas Kesehatan",
                  border: OutlineInputBorder(),
                  counterText: "", // Hide the default counter text
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextField(
                controller: pasienController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Masukkan nama pasien",
                  border: OutlineInputBorder(),
                  counterText: "", // Hide the default counter text
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextField(
                controller: keluhanController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Masukkan keluhan pasien",
                  border: OutlineInputBorder(),
                  counterText: "", // Hide the default counter text
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextField(
                controller: diagnosaController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Masukkan diagnosa",
                  border: OutlineInputBorder(),
                  counterText: "", // Hide the default counter text
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextField(
                controller: kategoriController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Masukkan Kategori Penyakit",
                  border: OutlineInputBorder(),
                  counterText: "", // Hide the default counter text
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextField(
                controller: catatanController,
                keyboardType: TextInputType.text,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: "Masukkan catatan untuk pasien",
                  border: OutlineInputBorder(),
                  counterText: "", // Hide the default counter text
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextField(
                controller: obatController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Masukkan Obat yang disarankan",
                  border: OutlineInputBorder(),
                  counterText: "", // Hide the default counter text
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff06B54C),
                  minimumSize: const Size(325, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {
                  // Aksi untuk menavigasi ke halaman selanjutnya
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
                  var validate = true;
                if(selectedDate == null){
                  validate = false;
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Tanggal tidak boleh kosong")));
                  return;
                }else if (petugasController.text.isEmpty || petugasController.text == ''){
                  validate = false;
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Nama Petugas tidak boleh kosong")));
                }else if (pasienController.text.isEmpty || pasienController.text == ''){
                  validate = false;
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Nama Pasien tidak boleh kosong")));
                }else if (keluhanController.text.isEmpty || keluhanController.text == ''){
                  validate = false;
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Keluhan tidak boleh kosong")));
                }else if (diagnosaController.text.isEmpty || diagnosaController.text == ''){
                  validate = false;
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Diagnosa tidak boleh kosong")));
                }else if (kategoriController.text.isEmpty || kategoriController.text == ''){
                  validate = false;
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Kategori tidak boleh kosong")));
                }else if (catatanController.text.isEmpty || catatanController.text == ''){
                  validate = false;
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Catatan tidak boleh kosong")));
                }else if (obatController.text.isEmpty || obatController.text == ''){
                  validate = false;
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Obat tidak boleh kosong")));
                }

                if(validate){
                   var data = MedicalRecord(
                      date: selectedDate,
                      petugasKesehatan: petugasController.text,
                      namaPasien: pasienController.text,
                      keluhan: keluhanController.text,
                      diagnosa: diagnosaController.text,
                      kategoriPenyakit: kategoriController.text,
                      catatanObat: catatanController.text);
                  controller.addMedicalRecords(data);
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Image.asset(
                          "gambar/Checkmark.png",
                          width: 50.0,
                          height: 50.0,
                        ),
                        content: Text("Data anda telah tersimpan"),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ListCatatanKesehatan(),
                                  ));
                            },
                            child: Text("Ok"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff06B54C)),
                          )
                        ],
                      );
                    },
                  );
                }

                 
                },
                child: const Text(
                  'Save',
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
