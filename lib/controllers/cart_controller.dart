import 'package:flutter/material.dart';
import 'package:food_delivery_app/data/repository/cart_repo.dart';
import 'package:food_delivery_app/model/product.dart';
import 'package:get/get.dart';

import '../model/cart_model.dart';
import '../utils/colors.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;

  CartController({required this.cartRepo});
  Map<int, CartModel> _items = {};
  Map<int, CartModel> get items => _items;

  void addItem(ProductModel product, int quantity) {
    if (_items.containsKey(product.id!)) {
      _items.update(
          product.id!,
          (value) => CartModel(
              id: value.id,
              name: value.name,
              price: value.price,
              img: value.img,
              isExist: true,
              quantity: value.quantity! + quantity,
              time: DateTime.now().toString()));
    } else {
      if (quantity > 0) {
        _items.putIfAbsent(
            product.id!,
            () => CartModel(
                id: product.id,
                name: product.name,
                price: product.price,
                img: product.img,
                isExist: true,
                quantity: quantity,
                time: DateTime.now().toString()));
      } else {
        Get.snackbar(
            "Item Count", "you should at least add an item in the cart",
            colorText: Colors.white, backgroundColor: AppColors.mainColor);
      }
    }
  }

  bool existInCart(ProductModel product) {
    if (_items.containsKey(product.id)) {
      return true;
    } else {
      return false;
    }
  }

  getQuantity(ProductModel product) {
    var quantity = 0;
    if (_items.containsKey(product.id)) {
      _items.forEach((key, value) {
        if (key == product.id) {
          quantity = value.quantity!;
        }
      });
    }
    return quantity;
  }
}
