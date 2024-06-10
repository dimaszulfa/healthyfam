import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:healthyfam/adminhomepage/listartikelpage.dart';
import 'package:healthyfam/adminhomepage/listcatatankesehatanpage.dart';
import 'package:healthyfam/controllers/artikel_controller.dart';
import 'package:healthyfam/controllers/kesehatan_controller.dart';
import 'package:healthyfam/login/loginemail.dart';

class AddArtikelPageAdmin extends StatefulWidget {
  @override
  _AddArtikelPageAdminState createState() =>
      _AddArtikelPageAdminState();
}

class _AddArtikelPageAdminState
    extends State<AddArtikelPageAdmin> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController imageUrlController = TextEditingController();
  ArtikelController controller = Get.put(
      ArtikelController()); // Rather Controller controller = Controller();

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
              TextField(
                controller: titleController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Masukkan judul artikel",
                  border: OutlineInputBorder(),
                  counterText: "", // Hide the default counter text
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextField(
                controller: descriptionController,
                keyboardType: TextInputType.text,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: "Masukkan deskripsi artikel",
                  border: OutlineInputBorder(),
                  counterText: "", // Hide the default counter text
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextField(
                controller: imageUrlController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Masukkan url image",
                  border: OutlineInputBorder(),
                  counterText: "", // Hide the default counter text
                ),
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
                  var data = Article(title: titleController.text, description: descriptionController.text, imageUrl: imageUrlController.text);
                  controller.addArticle(data);
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
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ListArtikelPage(),));
                            },
                            child: Text("Ok"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff06B54C)),
                          )
                        ],
                      );
                    },
                  );
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
