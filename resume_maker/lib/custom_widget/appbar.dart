import 'package:flutter/material.dart';
import 'package:resume_maker/utils/constant.dart';

AppBar appbarWidget(BuildContext context,
    {Widget? title, bool? isBack, IconData? icon1, bool? isWhiteBackIcon, GestureTapCallback? onTap}) {
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
              child:
                  GestureDetector(onTap: onTap, child: Icon(icon1, size: 30)),
            )
    ],
    backgroundColor: AppConstant.clrBlack,
  );
}
