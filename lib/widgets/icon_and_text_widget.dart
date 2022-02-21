import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  final Color iconColor;

  const IconAndTextWidget(
      {required this.icon, required this.text, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            icon,
            color: iconColor,
            size: 15,
          ),
          SizedBox(
            width: 5,
          ),
          SmallText(text: text)
        ],
      ),
    );
  }
}
