import 'package:food_delivery_app/data/api/api_client.dart';
import 'package:get/get.dart';

//comment :  create this class for call each values that we want call form ApiClient
class PopularPoroductRepo extends GetxService {
  final ApiClient apiClient;
  PopularPoroductRepo({required this.apiClient});
  //comment : for example we need Popular Poroducts data form our url
  Future<Response> getPopularProductRepo() async {
      //comment :  here getData of popular Products and this function will return them to us
    return apiClient.getData("");
  }
}
