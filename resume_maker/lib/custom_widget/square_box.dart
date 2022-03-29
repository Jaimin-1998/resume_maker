import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

squareBox(BuildContext context,
    {double? width,
    double? height,
    Color? color,
    double? radius,
    Widget? widget1,
    Widget? widget2,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    GestureTapCallback? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: padding,
      margin: margin,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [widget1!, const SizedBox(height: 10), widget2!],
      ),
    ),
  );
}
