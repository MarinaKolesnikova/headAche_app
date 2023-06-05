import 'package:migr_proj/src/symptoms/symptom_model/symptom.dart';

class EditableSkillModel {
  const EditableSkillModel({
    required this.symptom,
    required this.isChecked,
  });
  final Symptom symptom;
  final bool isChecked;
}
