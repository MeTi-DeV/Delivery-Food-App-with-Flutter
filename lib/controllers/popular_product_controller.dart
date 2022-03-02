import 'package:food_delivery_app/data/repository/popular_product_repo.dart';
import 'package:food_delivery_app/model/product.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularPoroductRepo popularPoroductRepo;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;
  PopularProductController({required this.popularPoroductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;
  Future<void> getPopularProductList() async {
    Response response = await popularPoroductRepo.getPopularProductRepo();
    if (response.statusCode == 200) {
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      print(_popularProductList);
      _isLoaded = true;
      update();
    } else {}
  }
}
