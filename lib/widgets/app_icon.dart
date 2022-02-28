import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final double size;
  final double iconSize;
  AppIcon(
      {required this.icon,
      this.iconSize=16,
      this.iconColor = const Color(0xFF756d54),
      this.backgroundColor = const Color(0xFFfcf4e4),
      this.size = 40});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: size,
      height: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size /2),
          color: backgroundColor.withOpacity(0.7)
          ),
      child: Align(
          alignment: Alignment.center,
          child: Icon(
            icon,
            color: iconColor,
            size: iconSize
          )),
    );
  }
}
