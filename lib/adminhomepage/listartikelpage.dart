import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:healthyfam/adminhomepage/addartikelpageadmin.dart';
import 'package:healthyfam/adminhomepage/artikelkesehatanadmin.dart';
import 'package:healthyfam/controllers/artikel_controller.dart';

class ListArtikelPage extends StatefulWidget {
  const ListArtikelPage({super.key});

  @override
  State<ListArtikelPage> createState() => _ListArtikelPageState();
}

class _ListArtikelPageState extends State<ListArtikelPage> {
    ArtikelController controller = Get.put(
      ArtikelController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Artikel"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddArtikelPageAdmin(),));
      }, child: Icon(Icons.add),),
      body: (controller.medicalRecords.isEmpty)
          ? Center(
              child: Text("Tidak ada artikel, silakan buat artikel"),
            ) :  ListView.builder(itemCount: controller.medicalRecords.length,
        itemBuilder: (context, index) {
          return buildArticleItem(context, controller.medicalRecords[index].imageUrl, controller.medicalRecords[index].title, controller.medicalRecords[index].description,ArtikelKesehatanAdmin(articleIndex: index,));
        },
      ),
    );
  }

  Widget buildArticleItem(
      BuildContext context, String imagePath, String title, String description, Widget targetPage) {
    return Container(
      margin: EdgeInsets.all(14.0),
      padding: EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => targetPage));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(imagePath, width: 336.0, height: 187.0,),
            SizedBox(height: 10.0),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            Text(
              description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14.0,
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
