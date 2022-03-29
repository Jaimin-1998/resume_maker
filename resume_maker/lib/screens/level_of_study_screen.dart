import 'package:flutter/material.dart';
import 'package:resume_maker/custom_widget/square_box.dart';
import 'package:resume_maker/utils/constant.dart';

class LevelOfStudyScreen extends StatefulWidget {
  const LevelOfStudyScreen({Key? key}) : super(key: key);

  @override
  State<LevelOfStudyScreen> createState() => _LevelOfStudyScreenState();
}

class _LevelOfStudyScreenState extends State<LevelOfStudyScreen> {
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
            Text(AppConstant.strDoYouHaveWorkExperience,
                textAlign: TextAlign.center,
                style: AppConstant.textStyle(AppConstant.fontSize28)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                squareBox(context,
                    color: AppConstant.clrWhite,
                    width: AppConstant.displayWidth(context) * 0.27,
                    height: AppConstant.displayWidth(context) * 0.3,
                    padding: const EdgeInsets.all(10),
                    radius: 8,
                    widget1: const Icon(
                      Icons.school,
                      color: AppConstant.clrBlack,
                      size: 50,
                    ),
                    widget2: const Text(
                      AppConstant.strHighSchool,
                      style: TextStyle(color: AppConstant.clrRed),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LevelOfStudyScreen()))),
                squareBox(context,
                    color: AppConstant.clrWhite,
                    width: AppConstant.displayWidth(context) * 0.27,
                    height: AppConstant.displayWidth(context) * 0.3,
                    padding: const EdgeInsets.all(10),
                    radius: 8,
                    widget1: const Icon(
                      Icons.devices_other,
                      color: AppConstant.clrBlack,
                      size: 50,
                    ),
                    widget2: const Text(
                      AppConstant.strOther,
                      style: TextStyle(color: AppConstant.clrBlack),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LevelOfStudyScreen()))),
                squareBox(context,
                    color: AppConstant.clrWhite,
                    width: AppConstant.displayWidth(context) * 0.27,
                    height: AppConstant.displayWidth(context) * 0.3,
                    padding: const EdgeInsets.all(10),
                    radius: 8,
                    widget1: const Icon(
                      Icons.account_balance,
                      color: AppConstant.clrBlack,
                      size: 50,
                    ),
                    widget2: const Text(
                      AppConstant.strCollege,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: AppConstant.clrBlack),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LevelOfStudyScreen()))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
