import 'package:flutter/material.dart';
import 'package:resume_maker/screens/home_screen.dart';
import 'package:resume_maker/utils/constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(AppConstant.strSplashScreen,
            style: TextStyle(
                color: AppConstant.clrWhite, fontSize: AppConstant.fontSize20)),
      ),
    );
  }
}
