import 'package:flutter/material.dart';

Widget button({
  Widget? child,
  double? padding,
  required String text,
  Color? buttonColor,
  double? width,
  bool? isSmallButton,
  required Function() function,
  double? borderRadius,
}) => Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30)
  ),
  width: width ?? 200,
  child:   MaterialButton(
    onPressed: function,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 18),
      ),
    color: buttonColor ?? const Color(0xff3d649f),
      child: Padding(
        padding: EdgeInsets.all(padding ?? 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          (isSmallButton ?? false) ? paragraphText(text: text) : subTitleText(text: text)
        ],
    ),
      )
  ),
);

Widget titleText({
  required String text,
  double? size = 25,
  FontWeight? fontWeight = FontWeight.bold,
  Color? color = Colors.white,
  TextAlign? textAlign = TextAlign.center,
}) => Text(
  text,
  textAlign: textAlign,
  style: TextStyle(
      fontSize: size,
      fontWeight: fontWeight,
      color: color
  ),
);

Widget subTitleText({
  required String text,
  double? size = 20,
  FontWeight? fontWeight = FontWeight.w500,
  Color? color = Colors.white,
  TextAlign? textAlign = TextAlign.center,
  int? maxLines = 2,
  TextOverflow? textOverflow
}) => Text(
  text,
  textAlign: textAlign,
  style: TextStyle(
    fontSize: size,
    fontWeight: fontWeight,
    color: color,
  ),
  maxLines: maxLines,
  overflow: textOverflow,
);

Widget paragraphText({
  required String text,
  double? size = 15.0,
  FontWeight? fontWeight = FontWeight.w400,
  Color? color = Colors.white,
  TextAlign? textAlign = TextAlign.center,
  int? maxLines = 2,
  TextOverflow? textOverflow
}) => Text(
  text,
  textAlign: textAlign,
  style: TextStyle(
      fontSize: size,
      fontWeight: fontWeight,
      color: color
  ),
  maxLines: maxLines,
  overflow: textOverflow,
);
