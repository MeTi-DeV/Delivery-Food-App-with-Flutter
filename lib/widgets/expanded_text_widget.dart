import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class ExtenadableTextWidget extends StatefulWidget {
  final String text;

  ExtenadableTextWidget({required this.text});

  @override
  State<ExtenadableTextWidget> createState() => _ExtenadableTextWidgetState();
}

class _ExtenadableTextWidgetState extends State<ExtenadableTextWidget> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight / 7.81;
  @override
  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(text: firstHalf,size: Dimensions.font16,color: AppColors.paraColor,)
          : Container(
            
              child: Expanded(
                
                child: SingleChildScrollView(
physics:  BouncingScrollPhysics(),
                  
                  child: Column(
                    children: [
                      SmallText(heigh: 1.8 ,
                      size: Dimensions.font16,
                      color: AppColors.paraColor,
                          text: hiddenText
                              ? (firstHalf + "...")
                              : (firstHalf + secondHalf),
                              ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            hiddenText = !hiddenText;
                          });
                        },
                        child:  hiddenText
                                ?Row(
                          children: [
                            SmallText(
                              
                              text: "Show More",
                              color: AppColors.mainColor,
                            ),
                            Icon(Icons.keyboard_arrow_down_sharp,
                                    color: AppColors.mainColor)
                               
                          ],
                        ): Row(children: [
                          SmallText(
                     
                              text: "Show Less",
                              color: AppColors.mainColor,
                            ),
                           Icon(Icons.keyboard_arrow_up_sharp,
                                    color: AppColors.mainColor),
                        ],),
                      )
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
