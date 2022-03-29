import 'package:flutter/material.dart';
import 'package:resume_maker/screens/splash_screen.dart';
import 'package:resume_maker/utils/constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          canvasColor: AppConstant.clrBlack,
          textTheme: const TextTheme(
              headline1: TextStyle(color: AppConstant.clrWhite))),
      home: const SplashScreen(),
    );
  }
}
