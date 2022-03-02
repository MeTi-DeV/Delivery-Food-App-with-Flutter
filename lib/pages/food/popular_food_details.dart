import 'package:flutter/material.dart';
import 'package:food_delivery_app/controllers/cart_controller.dart';
import 'package:food_delivery_app/controllers/popular_product_controller.dart';
import 'package:food_delivery_app/model/product.dart';
import 'package:food_delivery_app/routes/routeHelper.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/widgets/app_column.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/expanded_text_widget.dart';
import 'package:get/get.dart';

import '../../utils/app_constants.dart';
import '../../utils/dimensions.dart';

class PopularFoodDetails extends StatelessWidget {
  final int pageId;

  PopularFoodDetails({Key? key, required this.pageId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<PopularProductController>().popularProductList[pageId];
    Get.find<PopularProductController>().initProduct(product,Get.find<CartController>());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              height: Dimensions.popularDetailImg,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(AppConstants.BASE_URL +
                      AppConstants.UPLOAD_URL +
                      product.img!),
                ),
              ),
            ),
          ),
          Positioned(
              right: Dimensions.width20,
              left: Dimensions.width20,
              top: Dimensions.height45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteHelpers.getInitial());
                    },
                    child: AppIcon(icon: Icons.arrow_back_ios_new),
                  ),
                  AppIcon(icon: Icons.shopping_cart_rounded),
                ],
              )),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularDetailImg - (Dimensions.height45) * 1.5,
            child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(Dimensions.radius30),
                        topLeft: Radius.circular(Dimensions.radius30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(
                      stars: product.stars.toString(),
                      text: product.name.toString(),
                    ),
                    SizedBox(
                      height: Dimensions.height30,
                    ),
                    BigText(text: "Introduce"),
                    SizedBox(
                      height: Dimensions.radius20,
                    ),
                    ExtenadableTextWidget(text: product.description.toString())
                  ],
                )),
          ),
        ],
      ),
      bottomNavigationBar: GetBuilder<PopularProductController>(
     
        builder: (popularProduct) {
          return Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.width20, vertical: Dimensions.height30),
              height: Dimensions.detailBottomNavigationSize,
              decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20 * 2),
                  topRight: Radius.circular(Dimensions.radius20 * 2),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Container(
                        padding: EdgeInsets.symmetric(
                            vertical: Dimensions.height20 * 0.7,
                            horizontal: Dimensions.width20 * 0.7),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(Dimensions.radius15)),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                popularProduct.setQuantity(true);
                              },
                              child: Icon(
                                Icons.add,
                                color: AppColors.signColor,
                              ),
                            ),
                            SizedBox(
                              width: Dimensions.width10,
                            ),
                            BigText(text: popularProduct.inCartItem.toString()),
                            SizedBox(
                              width: Dimensions.width10,
                            ),
                           GestureDetector(
                              onTap: () {
                                popularProduct.setQuantity(false);
                              },
                              child: Icon(
                                Icons.remove,
                                color: AppColors.signColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                 
                
                  Container(
                      padding: EdgeInsets.symmetric(
                          vertical: Dimensions.height20 * 0.7,
                          horizontal: Dimensions.width20 * 0.7),
                      decoration: BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.circular(Dimensions.radius15)),
                      child: GestureDetector(
                        onTap: (){
                          popularProduct.addItem(product);
                        },
                        child: BigText(
                          text: "${product.price} | Add to cart",
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
            ); 
        },
      ),
    );
  }
}
