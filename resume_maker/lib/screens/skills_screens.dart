import 'package:flutter/material.dart';
import 'package:resume_maker/custom_widget/appbar.dart';
import 'package:resume_maker/custom_widget/button.dart';
import 'package:resume_maker/custom_widget/text_field.dart';
import 'package:resume_maker/models/skills_model.dart';
import 'package:resume_maker/repositories/skills_repository.dart';
import 'package:resume_maker/utils/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SkillsScreens extends StatefulWidget {
  const SkillsScreens({Key? key}) : super(key: key);

  @override
  State<SkillsScreens> createState() => _SkillsScreensState();
}

List<SkillsModel> skillsModel = [];

class _SkillsScreensState extends State<SkillsScreens> {
  int _count = 1;

  SkillsRepository skillsRepository = SkillsRepository();
  List<TextEditingController> skillsController = [];
  List<TextEditingController> yearsController = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    skillsRepository.getSkillsData().then((value) {
      setState(() {
        skillsModel = value;

        print('sadfhbdjf: $skillsModel');
      });
    });
    setState(() {
      skillsController.add(TextEditingController());
      yearsController.add(TextEditingController());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(context, icon1: Icons.save, onTap: () {
        skillsRepository.saveSkills(skillsModel);
        print('skillsModel  ${skillsModel[0].skill.toString()}');
      },
          title: Text(
            AppConstant.strSkills,
            style: AppConstant.textStyle(15),
          )),
      body: ListView.separated(
        separatorBuilder: (context, index) => Container(height: 10),
        padding: const EdgeInsets.only(bottom: 10, right: 20, left: 20),
        itemBuilder: (context, i) {
          return Row(
            children: [
              Flexible(
                  child: TextFormField(
                controller: skillsController[i],
                style: const TextStyle(
                    color: AppConstant.clrWhite,
                    fontSize: AppConstant.fontSize15),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    hintText: AppConstant.strSkills,
                    hintStyle: const TextStyle(
                        color: AppConstant.clrGrey,
                        fontSize: AppConstant.fontSize15),
                    contentPadding: const EdgeInsets.only(left: 15, top: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            const BorderSide(color: AppConstant.clrGrey)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            const BorderSide(color: AppConstant.clrGrey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            const BorderSide(color: AppConstant.clrGrey))),
              )),
              const SizedBox(width: 10),
              Flexible(
                child: CustomTextField(
                    // width: AppConstant.displayWidth(context) * 0.3,
                    controller: yearsController[i],
                    hintText: AppConstant.strExperience,
                    borderColor: AppConstant.clrGrey,
                    textColor: AppConstant.clrWhite,
                    hintTextColor: AppConstant.clrGrey,
                    hintTextSize: AppConstant.fontSize15,
                    textSize: AppConstant.fontSize15,
                    keyboardType: TextInputType.number),
              ),
            ],
          );
        },
        itemCount: _count,
        // children: _contatos,
      ),
      // bottomNavigationBar: CustomButton(
      //   padding: const EdgeInsets.all(10),
      //   onTap: () {},
      //   text: 'Save',
      //   color: AppConstant.clrGreen,
      //   textColor: AppConstant.clrWhite,
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNewContactRow,
        backgroundColor: AppConstant.clrRed,
        child: const Icon(Icons.add, color: AppConstant.clrWhite),
      ),
    );
  }

  void _addNewContactRow() {
    setState(() {
      print(" indexx--" + (_count - 1).toString());
      print("Skill---" + skillsController[_count - 1].text.toString());
      skillsModel.add(SkillsModel(
          skill: skillsController[_count - 1].text.toString(),
          yearsOfExperience:
              int.parse(yearsController[_count - 1].text.toString())));
      _count = _count + 1;
      skillsController.add(TextEditingController());
      yearsController.add(TextEditingController());
      setState(() {});
      print(" skillsController lengthh---->" +
          skillsController.length.toString());

      // print(int.parse(yearsController[_count-1].text.toString()));
    });
  }
}

class ContactRow extends StatefulWidget {
  TextEditingController skillsController;
  TextEditingController yearsController;

  ContactRow(this.skillsController, this.yearsController);

  @override
  State<StatefulWidget> createState() => new _ContactRow();
}

class _ContactRow extends State<ContactRow> {
  SkillsRepository skillsRepository = SkillsRepository();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              child: CustomTextField(
                  // width: AppConstant.displayWidth(context) * 0.6,
                  controller: widget.skillsController,
                  hintText: AppConstant.strSkills,
                  borderColor: AppConstant.clrGrey,
                  textColor: AppConstant.clrWhite,
                  hintTextColor: AppConstant.clrGrey,
                  hintTextSize: AppConstant.fontSize15,
                  textSize: AppConstant.fontSize15,
                  keyboardType: TextInputType.name),
            ),
            const SizedBox(width: 10),
            Flexible(
              child: CustomTextField(
                  // width: AppConstant.displayWidth(context) * 0.3,
                  controller: widget.yearsController,
                  hintText: AppConstant.strExperience,
                  borderColor: AppConstant.clrGrey,
                  textColor: AppConstant.clrWhite,
                  hintTextColor: AppConstant.clrGrey,
                  hintTextSize: AppConstant.fontSize15,
                  textSize: AppConstant.fontSize15,
                  keyboardType: TextInputType.number),
            ),
          ],
        ),
        const SizedBox(height: 15)
      ],
    );
  }
}
