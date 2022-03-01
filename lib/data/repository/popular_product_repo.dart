import 'package:food_delivery_app/data/api/api_client.dart';
import 'package:food_delivery_app/utils/app_constants.dart';
import 'package:get/get.dart';

class PopularPoroductRepo extends GetxService {
  final ApiClient apiClient;
  PopularPoroductRepo({required this.apiClient});
  Future<Response> getPopularProductRepo() async {
    return apiClient.getData(AppConstants.POPULAR_PRODUCT_URL);
  }
}
