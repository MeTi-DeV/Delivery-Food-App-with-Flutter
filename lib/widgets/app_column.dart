import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/icon_and_text_widget.dart';
import 'package:food_delivery_app/widgets/small_text.dart';
class AppColumn extends StatelessWidget {
  final String text;
  final String stars;
  const AppColumn({Key? key,required this.text ,required this.stars}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: text,size: Dimensions.font26,),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Row(
                      children: [
                        Stack(children: [
                         
                         Wrap(
                          children: List.generate(
                            5,
                            (index) => Icon(
                              Icons.star_rounded,
                              size: Dimensions.icon15,
                              color: Colors.grey,
                            ),
                          ),
                        ), Wrap(
                          children: List.generate(
                            int.parse(stars),
                            (index) => Icon(
                              Icons.star_rounded,
                              size: Dimensions.icon15,
                              color: AppColors.mainColor,
                            ),
                          ),
                        ), 
                        ],),
                        
                        SizedBox(
                          width: Dimensions.height10,
                        ),
                        SmallText(text: stars),
                        SizedBox(
                          width: Dimensions.height10,
                        ),
                        SmallText(text: "1287"),
                        SizedBox(
                          width: Dimensions.width5,
                        ),
                        SmallText(text: "comments")
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconAndTextWidget(
                            icon: Icons.circle,
                            text: "Normal",
                            iconColor: AppColors.iconColor2),
                        IconAndTextWidget(
                            icon: Icons.location_on_rounded,
                            text: "1.7 km",
                            iconColor: AppColors.mainColor),
                        IconAndTextWidget(
                            icon: Icons.access_time_rounded,
                            text: "32m",
                            iconColor: AppColors.iconColor1),
                      ],
                    ),
                  ],
                );
  }
}