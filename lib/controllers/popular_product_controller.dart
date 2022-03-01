import 'package:food_delivery_app/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';
  //comment :  this class is for management our logics for list of popularProducts
class PopularProductController extends GetxController {
    //comment :  create instance of popularPoroductRepo
  final PopularPoroductRepo popularPoroductRepo;

  PopularProductController({required this.popularPoroductRepo});
    //comment : create a list that will store all of popularProduct data received form data base
  List<dynamic> _popularProductList = [];
    //comment : it's copy of _popularProductList for use it every where that we want in UI
  List<dynamic> get popularProductList => _popularProductList;
  //comment : this function  will get all data that we want in popularPoroductRepo and if it was successful store them in 
  // _popularProductList
  Future<void> getPopularProductList() async {
    Response response = await popularPoroductRepo.getPopularProductRepo();
    if (response.statusCode == 200) {
      _popularProductList = [];
      // _popularProductList.addAll();
      update();
    } else {}
  }
}
