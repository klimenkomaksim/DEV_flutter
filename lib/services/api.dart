import 'package:dev_flutter/services/article.dart';

class API {
  Article article;

  API({required String url}) : article = Article(url);
}
