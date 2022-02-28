import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/widgets/app_column.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/expanded_text_widget.dart';

import '../../utils/dimensions.dart';

class PopularFoodDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);
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
                      image: AssetImage("assets/image/food0.png"))),
            ),
          ),
          Positioned(
              right: Dimensions.width20,
              left: Dimensions.width20,
              top: Dimensions.height45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios_new),
                  AppIcon(icon: Icons.shopping_cart_rounded),
                ],
              )),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularDetailImg -(Dimensions.height45)*1.5,
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
                      text: "Chinese Side",
                    ),
                    SizedBox(height: Dimensions.height30,),
                    BigText(text: "Introduce"),
                  SizedBox(height: Dimensions.radius20,),
ExtenadableTextWidget(text:"Chinese cuisines seem to have mastered this art; hence you find most of their meals are accompanied by different side dishes. The side dishes could be a variety of raw or simple veggies to potato or soups or just anything that compliments or balance the main meal. In this article, I have gathered different Chinese side dishes from traditional to keto, paleo vegan gluten-free, among others. So stick around as I show you different easy recipes you can make for family gatherings or just dinners.")

                  ],
                )),
          ),
        ],
      ),
      bottomNavigationBar: Container(
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
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  BigText(text: "0"),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: Dimensions.height20 * 0.7,
                  horizontal: Dimensions.width20 * 0.7),
              decoration: BoxDecoration(
                  color:AppColors.mainColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius15)),
              child:BigText(text: "\$10 | Add to cart",color: Colors.white,)
              
            ),
          ],
        ),
      ),
    );
  }
}
