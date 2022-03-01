import 'package:food_delivery_app/controllers/popular_product_controller.dart';
import 'package:food_delivery_app/data/api/api_client.dart';
import 'package:food_delivery_app/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';
  //comment :  create this function to get all of data at first with run app and call it in main.dart
Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "http//www.google.com"));
  // repos
  Get.lazyPut(() => PopularPoroductRepo(apiClient: Get.find()));
  //controller
  Get.lazyPut(() => PopularProductController(popularPoroductRepo: Get.find()));
}
