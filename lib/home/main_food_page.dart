import 'package:flutter/material.dart';
import 'package:food_delivery_app/home/food_page_body.dart';
import 'package:food_delivery_app/units/colors.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 45 ,bottom: 15),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        child: BigText(text: "United State",color: AppColors.mainColor,)
                      ),
                      Row(
                        children: [
                          Container(
                            child: SmallText(text: "New York" ,color: Colors.black54,)
                          ),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(15),color: AppColors.mainColor),
                          
                      child: Icon(
                        Icons.search_rounded,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          FoodPageBody()
        ],
      ),
    );
  }
}
