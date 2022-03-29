import 'package:flutter/material.dart';
import 'package:resume_maker/custom_widget/appbar.dart';
import 'package:resume_maker/custom_widget/text_field.dart';
import 'package:resume_maker/utils/constant.dart';

class SkillsScreens extends StatefulWidget {
  const SkillsScreens({Key? key}) : super(key: key);

  @override
  State<SkillsScreens> createState() => _SkillsScreensState();
}

class _SkillsScreensState extends State<SkillsScreens> {
  int _count = 1;

  @override
  Widget build(BuildContext context) {
    List<Widget> _contatos = List.generate(_count, (int i) => ContactRow());

    return Scaffold(
      appBar: appbarWidget(context,
          title: Text(
            AppConstant.strSkills,
            style: AppConstant.textStyle(15),
          )),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 10, right: 20, left: 20),
        children: _contatos,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNewContactRow,
        backgroundColor: AppConstant.clrRed,
        child: const Icon(Icons.add, color: AppConstant.clrWhite),
      ),
    );
  }

  void _addNewContactRow() {
    setState(() {
      _count = _count + 1;
    });
  }
}

class ContactRow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _ContactRow();
}

class _ContactRow extends State<ContactRow> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
            controller: textEditingController,
            hintText: AppConstant.strSkills,
            borderColor: AppConstant.clrGrey,
            textColor: AppConstant.clrWhite,
            hintTextColor: AppConstant.clrGrey,
            hintTextSize: AppConstant.fontSize15,
            textSize: AppConstant.fontSize15,
            keyboardType: TextInputType.name),
        const SizedBox(height: 15)
      ],
    );
  }
}
