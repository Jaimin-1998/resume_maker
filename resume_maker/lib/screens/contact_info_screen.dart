import 'package:flutter/material.dart';
import 'package:resume_maker/custom_widget/appbar.dart';
import 'package:resume_maker/custom_widget/button.dart';
import 'package:resume_maker/custom_widget/text_field.dart';
import 'package:resume_maker/screens/recent_work_experience_screen.dart';
import 'package:resume_maker/utils/constant.dart';

class ContactInfoScreen extends StatefulWidget {
  const ContactInfoScreen({Key? key}) : super(key: key);

  @override
  State<ContactInfoScreen> createState() => _ContactInfoScreenState();
}

class _ContactInfoScreenState extends State<ContactInfoScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(context,
          isBack: false,
          title: Text(
            AppConstant.strContactInfo,
            style: AppConstant.textStyle(15),
          )),
      body: ListView(
        padding: const EdgeInsets.only(left: 20, right: 20),
        children: [
          CustomTextField(
              controller: firstNameController,
              hintText: AppConstant.strFirstName,
              borderColor: AppConstant.clrGrey,
              textColor: AppConstant.clrWhite,
              hintTextColor: AppConstant.clrGrey,
              hintTextSize: AppConstant.fontSize15,
              textSize: AppConstant.fontSize15,
              keyboardType: TextInputType.name),
          const SizedBox(height: 15),
          CustomTextField(
              controller: lastNameController,
              hintText: AppConstant.strLastName,
              borderColor: AppConstant.clrGrey,
              textColor: AppConstant.clrWhite,
              hintTextColor: AppConstant.clrGrey,
              hintTextSize: AppConstant.fontSize15,
              textSize: AppConstant.fontSize15,
              keyboardType: TextInputType.name),
          const SizedBox(height: 15),
          CustomTextField(
              controller: emailController,
              hintText: AppConstant.strEmail,
              borderColor: AppConstant.clrGrey,
              textColor: AppConstant.clrWhite,
              hintTextColor: AppConstant.clrGrey,
              hintTextSize: AppConstant.fontSize15,
              textSize: AppConstant.fontSize15,
              keyboardType: TextInputType.emailAddress),
          const SizedBox(height: 15),
          CustomTextField(
              controller: phoneController,
              hintText: AppConstant.strPhone,
              borderColor: AppConstant.clrGrey,
              textColor: AppConstant.clrWhite,
              hintTextColor: AppConstant.clrGrey,
              hintTextSize: AppConstant.fontSize15,
              textSize: AppConstant.fontSize15,
              keyboardType: TextInputType.number),
          const SizedBox(height: 15),
          CustomTextField(
              controller: addressController,
              hintText: AppConstant.strAddress,
              borderColor: AppConstant.clrGrey,
              textColor: AppConstant.clrWhite,
              hintTextColor: AppConstant.clrGrey,
              hintTextSize: AppConstant.fontSize15,
              textSize: AppConstant.fontSize15,
              keyboardType: TextInputType.name,
              maxLines: 3),
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
          CustomTextField(
              controller: zipCodeController,
              hintText: AppConstant.strZipCode,
              borderColor: AppConstant.clrGrey,
              textColor: AppConstant.clrWhite,
              hintTextColor: AppConstant.clrGrey,
              hintTextSize: AppConstant.fontSize15,
              textSize: AppConstant.fontSize15,
              keyboardType: TextInputType.name),
          const SizedBox(height: 15),
          CustomButton(
              height: 50,
              padding: const EdgeInsets.all(10),
              textColor: AppConstant.clrWhite,
              color: AppConstant.clrRed,
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const MostRecentWorkExperienceScreen())),
              icon: false,
              text: AppConstant.strContinue,
              radius: 5)
        ],
      ),
    );
  }
}
