import 'package:flutter/material.dart';
import 'package:resume_maker/utils/constant.dart';

class CustomTextField extends StatefulWidget {
  TextEditingController? controller;
  Color? textColor;
  double? textSize;
  String? textFamily;
  String? hintText;
  Color? hintTextColor;
  double? hintTextSize;
  String? hintTextFamily;
  Color? borderColor;
  TextInputType? keyboardType;
  Widget? suffixIcon;
  int? maxLines = 1;
  Widget? prefixIcon;
  double? height;
  double? width;

  CustomTextField(
      {this.controller,
      this.textColor,
      this.textSize,
      this.textFamily,
      this.hintText,
      this.hintTextColor,
      this.hintTextSize,
      this.hintTextFamily,
      this.borderColor,
      this.keyboardType,
      this.suffixIcon,
      this.maxLines,
      this.prefixIcon,
      this.height,
      this.width});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? 50,
      width: widget.width ?? AppConstant.displayWidth(context),
      child: TextFormField(
        controller: widget.controller,
        style: TextStyle(
            color: widget.textColor,
            fontSize: widget.textSize,
            fontFamily: widget.textFamily),
        keyboardType: widget.keyboardType,
        maxLines: widget.maxLines,
        decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(
                color: widget.hintTextColor,
                fontSize: widget.hintTextSize,
                fontFamily: widget.hintTextFamily),
            suffixIcon: widget.suffixIcon,
            prefixIcon: widget.prefixIcon,
            contentPadding: const EdgeInsets.only(left: 15, top: 20),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: widget.borderColor!)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: widget.borderColor!)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: widget.borderColor!))),
      ),
    );
  }
}
