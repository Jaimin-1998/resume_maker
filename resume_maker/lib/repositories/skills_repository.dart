import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:resume_maker/models/skills_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SkillsRepository {
  Future prefSetString(String key, String value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString(key, value);
  }

  Future prefGetString(String key, String value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    if (pref.getString(key) != null) {
      return pref.getString(key);
    } else {
      return value;
    }
  }

  Future prefSetInt(String key, int value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt(key, value);
  }

  Future prefGetInt(String key, int value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    if (pref.getInt(key) != null) {
      return pref.getInt(key);
    } else {
      return value;
    }
  }

  void saveSkillsData(String key, List<SkillsModel> value) {
    prefSetString('SkillsList', saveSkills(value));
  }

  String saveSkills(List<SkillsModel> listSkill) =>
      json.encode(List<SkillsModel>.from(listSkill.map((e) => e)));

  Future<List<SkillsModel>> getSkillsData() async {
    String data = (await prefGetString('SkillsList', ''));
    print('Data data data: ${data.toString()}');
    return Future.value(getSkills(data));
  }

  List<SkillsModel> getSkills(String str) => List<SkillsModel>.from(
      json.decode(str).map((e) => SkillsModel.fromJson(e)));
}
