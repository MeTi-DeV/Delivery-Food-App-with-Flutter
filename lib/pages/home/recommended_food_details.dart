import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/expanded_text_widget.dart';

class RecommendedFoodDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            toolbarHeight:95,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios_new),
                AppIcon(icon: Icons.shopping_cart),
              ],
            ),
            bottom: PreferredSize(
                child: Container(
                  height: Dimensions.height45,
                  width: double.maxFinite,
                  child: Center(child: BigText(text: "Chinese Slides")),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    ),
                  ),
                ),
                preferredSize: Size.fromHeight(0)),
            backgroundColor: AppColors.yellowColor,
            pinned: true,
            expandedHeight: Dimensions.screenHeight / 2.6,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                fit: BoxFit.cover,
                width: double.maxFinite,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: ExtenadableTextWidget(
                      text:
                          "Chinese cuisines seem to have mastered this art; hence you find most of their meals are accompanied by different side dishes. The side dishes could be a variety of raw or simple veggies to potato or soups or just anything that compliments or balance the main meal. In this article, I have gathered different Chinese side dishes from traditional to keto, paleo vegan gluten-free, among others. So stick around as I show you different easy recipes you can make for family gatherings or just dinners.Chinese cuisines seem to have mastered this art; hence you find most of their meals are accompanied by different side dishes. The side dishes could be a variety of raw or simple veggies to potato or soups or just anything that compliments or balance the main meal. In this article, I have gathered different Chinese side dishes from traditional to keto, paleo vegan gluten-free, among others. So stick around as I show you different easy recipes you can make for family gatherings or just dinners.Chinese cuisines seem to have mastered this art; hence you find most of their meals are accompanied by different side dishes. The side dishes could be a variety of raw or simple veggies to potato or soups or just anything that compliments or balance the main meal. In this article, I have gathered different Chinese side dishes from traditional to keto, paleo vegan gluten-free, among others. So stick around as I show you different easy recipes you can make for family gatherings or just dinners.Chinese cuisines seem to have mastered this art; hence you find most of their meals are accompanied by different side dishes. The side dishes could be a variety of raw or simple veggies to potato or soups or just anything that compliments or balance the main meal. In this article, I have gathered different Chinese side dishes from traditional to keto, paleo vegan gluten-free, among others. So stick around as I show you different easy recipes you can make for family gatherings or just dinners.Chinese cuisines seem to have mastered this art; hence you find most of their meals are accompanied by different side dishes. The side dishes could be a variety of raw or simple veggies to potato or soups or just anything that compliments or balance the main meal. In this article, I have gathered different Chinese side dishes from traditional to keto, paleo vegan gluten-free, among others. So stick around as I show you different easy recipes you can make for family gatherings or just dinners.Chinese cuisines seem to have mastered this art; hence you find most of their meals are accompanied by different side dishes. The side dishes could be a variety of raw or simple veggies to potato or soups or just anything that compliments or balance the main meal. In this article, I have gathered different Chinese side dishes from traditional to keto, paleo vegan gluten-free, among others. So stick around as I show you different easy recipes you can make for family gatherings or just dinners.Chinese cuisines seem to have mastered this art; hence you find most of their meals are accompanied by different side dishes. The side dishes could be a variety of raw or simple veggies to potato or soups or just anything that compliments or balance the main meal. In this article, I have gathered different Chinese side dishes from traditional to keto, paleo vegan gluten-free, among others. So stick around as I show you different easy recipes you can make for family gatherings or just dinners.Chinese cuisines seem to have mastered this art; hence you find most of their meals are accompanied by different side dishes. The side dishes could be a variety of raw or simple veggies to potato or soups or just anything that compliments or balance the main meal. In this article, I have gathered different Chinese side dishes from traditional to keto, paleo vegan gluten-free, among others. So stick around as I show you different easy recipes you can make for family gatherings or just dinners.Chinese cuisines seem to have mastered this art; hence you find most of their meals are accompanied by different side dishes. The side dishes could be a variety of raw or simple veggies to potato or soups or just anything that compliments or balance the main meal. In this article, I have gathered different Chinese side dishes from traditional to keto, paleo vegan gluten-free, among others. So stick around as I show you different easy recipes you can make for family gatherings or just dinners."),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: (Dimensions.width20) * 2,
                vertical: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimensions.font26,
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                ),
                BigText(
                  text: "\$12.88 " + "x" + "0",
                  color: AppColors.mainBlackColor,
                ),
                AppIcon(
                  iconSize: Dimensions.font26,
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                )
              ],
            ),
          ),
          Container(
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
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15)),
                    child: Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
                    )),
                Container(
                    padding: EdgeInsets.symmetric(
                        vertical: Dimensions.height20 * 0.7,
                        horizontal: Dimensions.width20 * 0.7),
                    decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15)),
                    child: BigText(
                      text: "\$10 | Add to cart",
                      color: Colors.white,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
