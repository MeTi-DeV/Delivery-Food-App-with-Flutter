import 'package:flutter/material.dart';
import 'package:food_delivery_app/controllers/cart_controller.dart';
import 'package:food_delivery_app/data/repository/popular_product_repo.dart';
import 'package:food_delivery_app/model/product.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularPoroductRepo popularPoroductRepo;
  bool _isLoaded = false;
  int _quantity = 0;
  int get quantity => _quantity;
  int _inCartItem = 0;
  int get inCartItem => _quantity + _inCartItem;
  bool get isLoaded => _isLoaded;
  late CartController _cart;
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

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity = checkQuantity(_quantity + 1);
    } else {
      _quantity = checkQuantity(_quantity - 1);
    }
    update();
  }

  checkQuantity(int quantity) {
    if ((_inCartItem + quantity) < 0) {
      Get.snackbar("Item Count", "you  can\'t decrease less than 0",
          colorText: Colors.white, backgroundColor: AppColors.mainColor);
      return 0;
    } else if ((_inCartItem + quantity) > 20) {
      Get.snackbar("Item Count", "you  can\'t increase more than 20",
          colorText: Colors.white, backgroundColor: AppColors.mainColor);

      return 20;
    } else {
      return quantity;
    }
  }

  void initProduct(ProductModel product, CartController cartController) {
    _quantity = 0;
    _inCartItem = 0;
    _cart = cartController;
    var exist = false;
    exist = _cart.existInCart(product);
    if (exist) {
      _inCartItem = _cart.getQuantity(product);
    }
  }

  void addItem(ProductModel product) {
    // if (_quantity > 0) {
      _cart.addItem(product, _quantity);

      _quantity = 0;
      _inCartItem = _cart.getQuantity(product);
      _cart.items.forEach((key, value) {
        print("the id is" +
            value.id.toString() +
            "the quantity is " +
            value.quantity.toString());
      });
    // else {
    
    // }
  }
}
