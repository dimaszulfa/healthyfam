import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:healthyfam/adminhomepage/addcatatankesehatanpageadmin.dart';
import 'package:healthyfam/controllers/kesehatan_controller.dart';
import 'package:intl/intl.dart';

class ListCatatanKesehatan extends StatefulWidget {
  const ListCatatanKesehatan({super.key});

  @override
  State<ListCatatanKesehatan> createState() => _ListCatatanKesehatanState();
}

class _ListCatatanKesehatanState extends State<ListCatatanKesehatan> {
  KesehatanController controller = Get.put(
      KesehatanController()); // Rather Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddCatatanKesehatanPageAdmin(),
              ));
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("List Catan Kesehatan"),
        centerTitle: true,
      ),
      body:   (controller.medicalRecords.isEmpty)
          ? Center(
              child: Text("Tidak ada catatan kesehatan"),
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                  return Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        padding: EdgeInsets.all(10.0),
        child: Row(
              children: [
                Image.asset('gambar/Name.png', height: 90.0, width: 90.0,),
                Container(
                  margin: EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("${controller.medicalRecords[index].namaPasien}", style: TextStyle(color: Colors.black, fontSize: 20.0),),
                      Text("${controller.medicalRecords[index].diagnosa}", style: TextStyle(color: Colors.black, fontSize: 14.0)),
                      Text("${DateFormat('EEEE, dd/MM/yyyy','id').format(controller.medicalRecords[index].date)}",style: TextStyle(color: Colors.black, fontSize: 16.0)),
                    ],
                  ),
                )
              ],
        ),
        decoration: BoxDecoration(
          color: Color(0xffA6A6A6),
          borderRadius: BorderRadius.circular(6.0)
        ),
      );
              },
              itemCount: controller.medicalRecords.length,
            ),
    );
  }
}
