import 'package:flutter/material.dart';
import 'package:resume_maker/custom_widget/appbar.dart';
import 'package:resume_maker/custom_widget/button.dart';
import 'package:resume_maker/custom_widget/text_field.dart';
import 'package:resume_maker/screens/education_list_screen.dart';
import 'package:resume_maker/utils/constant.dart';

class MostRecentWorkExperienceScreen extends StatefulWidget {
  const MostRecentWorkExperienceScreen({Key? key}) : super(key: key);

  @override
  State<MostRecentWorkExperienceScreen> createState() =>
      _MostRecentWorkExperienceScreenState();
}

class _MostRecentWorkExperienceScreenState
    extends State<MostRecentWorkExperienceScreen> {
  TextEditingController jobTitleController = TextEditingController();
  TextEditingController companyController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController startMonthController = TextEditingController();
  TextEditingController endMonthController = TextEditingController();
  TextEditingController startYearController = TextEditingController();
  TextEditingController endYearController = TextEditingController();
  bool isCurrentWork = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(context,
          title: Text(AppConstant.strLatestWorkExperience,
              style: AppConstant.textStyle(15)),
          isBack: true),
      body: ListView(
        padding: const EdgeInsets.only(left: 20, right: 20),
        children: [
          CustomTextField(
              controller: jobTitleController,
              hintText: AppConstant.strJobTitle,
              borderColor: AppConstant.clrGrey,
              textColor: AppConstant.clrWhite,
              hintTextColor: AppConstant.clrGrey,
              hintTextSize: AppConstant.fontSize15,
              textSize: AppConstant.fontSize15,
              keyboardType: TextInputType.name),
          const SizedBox(height: 15),
          CustomTextField(
              controller: companyController,
              hintText: AppConstant.strCompany,
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
                    controller: startMonthController,
                    hintText: AppConstant.strStartMonth,
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
                    controller: startYearController,
                    hintText: AppConstant.strStartYear,
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
          isCurrentWork == false ? Row(
            children: [
              Expanded(
                child: CustomTextField(
                    controller: endMonthController,
                    hintText: AppConstant.strEndMonth,
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
                    controller: endYearController,
                    hintText: AppConstant.strEndYear,
                    borderColor: AppConstant.clrGrey,
                    textColor: AppConstant.clrWhite,
                    hintTextColor: AppConstant.clrGrey,
                    hintTextSize: AppConstant.fontSize15,
                    textSize: AppConstant.fontSize15,
                    keyboardType: TextInputType.number),
              ),
            ],
          ) : Container(),
          isCurrentWork == false ? const SizedBox(height: 15) : Container(),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isCurrentWork = !isCurrentWork;
                  });
                },
                child: Icon(
                    isCurrentWork == true
                        ? Icons.check_box_rounded
                        : Icons.check_box_outline_blank_rounded,
                    color: AppConstant.clrGrey,
                    size: 25),
              ),
              const SizedBox(width: 15),
              Text(
                AppConstant.strCurrentlyWorkingHere,
                style: AppConstant.textStyle(15),
              ),
            ],
          ),
          const SizedBox(height: 15),
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
                        builder: (context) => const EducationListScreen())),
                icon: false,
                text: AppConstant.strContinue,
                radius: 5),
          )
        ],
      ),
    );
  }
}
