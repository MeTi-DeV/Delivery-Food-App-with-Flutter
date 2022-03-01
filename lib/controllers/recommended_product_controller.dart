import 'package:food_delivery_app/model/product.dart';
import 'package:get/get.dart';

import '../data/repository/recommended_product_repo.dart';

class RecommendedProductController extends GetxController {
  final RecommendedPoroductRepo recommendedPoroductRepo;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;
  RecommendedProductController({required this.recommendedPoroductRepo});
  List<dynamic> _recommendedProductList = [];
  List<dynamic> get recommendedProductList => _recommendedProductList;
  Future<void> getRecommendedProductList() async {
    Response response =
        await recommendedPoroductRepo.getRecommendedProductRepo();
    if (response.statusCode == 200) {
      _recommendedProductList = [];
      _recommendedProductList.addAll(Product.fromJson(response.body).products);
      print(_recommendedProductList);
      _isLoaded=true;
      update();
    } else {}
  }
}
