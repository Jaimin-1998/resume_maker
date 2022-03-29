import 'package:flutter/material.dart';
import 'package:resume_maker/utils/constant.dart';

AppBar appbarWidget(BuildContext context,
    {Widget? title, bool? isBack, String? icon1, bool? isWhiteBackIcon}) {
  return AppBar(
    elevation: 0,
    leading: isBack == true
        ? GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.keyboard_backspace_outlined,
              color: isWhiteBackIcon != null
                  ? AppConstant.clrWhite
                  : AppConstant.clrBlack,
            ))
        : Container(),
    title: title!,
    centerTitle: true,
    actions: [
      icon1 == null
          ? Container()
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                  onTap: () {},
                  child: Image.asset(icon1, height: 30, width: 30)),
            )
    ],
    backgroundColor: AppConstant.clrBlack,
  );
}