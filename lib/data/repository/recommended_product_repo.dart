import 'package:food_delivery_app/data/api/api_client.dart';
import 'package:food_delivery_app/utils/app_constants.dart';
import 'package:get/get.dart';

class RecommendedPoroductRepo extends GetxService {
  final ApiClient apiClient;
  RecommendedPoroductRepo({required this.apiClient});
  Future<Response> getRecommendedProductRepo() async {
    return apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URL);
  }
}
