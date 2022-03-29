import 'package:flutter/material.dart';
import 'package:resume_maker/custom_widget/appbar.dart';
import 'package:resume_maker/custom_widget/button.dart';
import 'package:resume_maker/custom_widget/text_field.dart';
import 'package:resume_maker/screens/skills_screens.dart';
import 'package:resume_maker/utils/constant.dart';

class EducationListScreen extends StatefulWidget {
  const EducationListScreen({Key? key}) : super(key: key);

  @override
  State<EducationListScreen> createState() => _EducationListScreenState();
}

class _EducationListScreenState extends State<EducationListScreen> {
  TextEditingController collegeNameController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController graduationMonthController = TextEditingController();
  TextEditingController graduationYearController = TextEditingController();
  TextEditingController fieldOfStudyController = TextEditingController();
  TextEditingController degreeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(context,
          title:
              Text(AppConstant.strEducation, style: AppConstant.textStyle(15))),
      body: ListView(
        padding: const EdgeInsets.only(left: 20, right: 20),
        children: [
          CustomTextField(
              controller: collegeNameController,
              hintText: AppConstant.strCollegeName,
              borderColor: AppConstant.clrGrey,
              textColor: AppConstant.clrWhite,
              hintTextColor: AppConstant.clrGrey,
              hintTextSize: AppConstant.fontSize15,
              textSize: AppConstant.fontSize15,
              keyboardType: TextInputType.name),
          const SizedBox(height: 15),
          CustomTextField(
              controller: countryController,
              hintText: AppConstant.strCountry,
              borderColor: AppConstant.clrGrey,
              textColor: AppConstant.clrWhite,
              hintTextColor: AppConstant.clrGrey,
              hintTextSize: AppConstant.fontSize15,
              textSize: AppConstant.fontSize15,
              keyboardType: TextInputType.name),
          const SizedBox(height: 15),
          CustomTextField(
              controller: stateController,
              hintText: AppConstant.strState,
              borderColor: AppConstant.clrGrey,
              textColor: AppConstant.clrWhite,
              hintTextColor: AppConstant.clrGrey,
              hintTextSize: AppConstant.fontSize15,
              textSize: AppConstant.fontSize15,
              keyboardType: TextInputType.name),
          const SizedBox(height: 15),
          CustomTextField(
              controller: cityController,
              hintText: AppConstant.strCity,
              borderColor: AppConstant.clrGrey,
              textColor: AppConstant.clrWhite,
              hintTextColor: AppConstant.clrGrey,
              hintTextSize: AppConstant.fontSize15,
              textSize: AppConstant.fontSize15,
              keyboardType: TextInputType.name),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                    controller: graduationMonthController,
                    hintText: AppConstant.strGraduationMonth,
                    borderColor: AppConstant.clrGrey,
                    textColor: AppConstant.clrWhite,
                    hintTextColor: AppConstant.clrGrey,
                    hintTextSize: AppConstant.fontSize15,
                    textSize: AppConstant.fontSize15,
                    keyboardType: TextInputType.number),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: CustomTextField(
                    controller: graduationYearController,
                    hintText: AppConstant.strGraduationYear,
                    borderColor: AppConstant.clrGrey,
                    textColor: AppConstant.clrWhite,
                    hintTextColor: AppConstant.clrGrey,
                    hintTextSize: AppConstant.fontSize15,
                    textSize: AppConstant.fontSize15,
                    keyboardType: TextInputType.number),
              ),
            ],
          ),
          const SizedBox(height: 15),
          CustomTextField(
              controller: degreeController,
              hintText: AppConstant.strDegree,
              borderColor: AppConstant.clrGrey,
              textColor: AppConstant.clrWhite,
              hintTextColor: AppConstant.clrGrey,
              hintTextSize: AppConstant.fontSize15,
              textSize: AppConstant.fontSize15,
              keyboardType: TextInputType.name),
          const SizedBox(height: 15),
          CustomTextField(
              controller: fieldOfStudyController,
              hintText: AppConstant.strFieldOfStudy,
              borderColor: AppConstant.clrGrey,
              textColor: AppConstant.clrWhite,
              hintTextColor: AppConstant.clrGrey,
              hintTextSize: AppConstant.fontSize15,
              textSize: AppConstant.fontSize15,
              keyboardType: TextInputType.name),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomButton(
                height: 50,
                padding: const EdgeInsets.all(10),
                textColor: AppConstant.clrWhite,
                color: AppConstant.clrRed,
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SkillsScreens())),
                icon: false,
                text: AppConstant.strContinue,
                radius: 5),
          )
        ],
      ),
    );
  }
}
