import 'package:flutter/material.dart';
import 'package:resume_maker/custom_widget/square_box.dart';
import 'package:resume_maker/screens/work_experince_screen.dart';
import 'package:resume_maker/utils/constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 50, top: 100),
        height: AppConstant.displayHeight(context),
        width: AppConstant.displayWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppConstant.strCreateNewResume,
                textAlign: TextAlign.center,
                style: AppConstant.textStyle(AppConstant.fontSize28)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                squareBox(context,
                    color: AppConstant.clrWhite,
                    width: AppConstant.displayWidth(context) * 0.4,
                    height: AppConstant.displayWidth(context) * 0.3,
                    padding: const EdgeInsets.all(10),
                    radius: 8,
                    widget1: const Icon(
                      Icons.close,
                      color: AppConstant.clrRed,
                      size: 50,
                    ),
                    widget2: const Text(
                      AppConstant.strNo,
                      style: TextStyle(color: AppConstant.clrRed),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const WorkExperienceScreen()))),
                squareBox(context,
                    color: AppConstant.clrWhite,
                    width: AppConstant.displayWidth(context) * 0.4,
                    height: AppConstant.displayWidth(context) * 0.3,
                    padding: const EdgeInsets.all(10),
                    radius: 8,
                    widget1: const Icon(
                      Icons.done,
                      color: AppConstant.clrGreen,
                      size: 50,
                    ),
                    widget2: const Text(
                      AppConstant.strYes,
                      style: TextStyle(color: AppConstant.clrGreen),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const WorkExperienceScreen()))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
