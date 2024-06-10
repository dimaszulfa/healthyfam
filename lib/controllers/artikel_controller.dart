import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ArtikelController extends GetxController {
  // Article dataExample = ;
  RxList<Article> medicalRecords = <Article>[
    Article(
        title: "stunting",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
        imageUrl:
            "https://rsud.banjarkota.go.id/wp-content/uploads/2022/07/KENALI-DAN-CEGAH-stunting-poster-640x585.png")
  ].obs;

  void addArticle(Article article) {
    medicalRecords.add(article);
  }
}

class Article {
  String title;
  String description;
  String imageUrl;

  Article({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}
