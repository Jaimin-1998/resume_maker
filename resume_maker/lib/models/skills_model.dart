class SkillsModel {
  String? skill;
  int? yearsOfExperience;

  SkillsModel({this.skill, this.yearsOfExperience});

  factory SkillsModel.fromJson(Map<String, dynamic> json) => SkillsModel(
      skill: json['skill'], yearsOfExperience: json['yearsOfExperience']);

  Map<String, dynamic> toJson() =>
      {'skill': skill, 'yearsOfExperience': yearsOfExperience};
}
