import 'package:migr_proj/src/symptoms/symptom_model/symptom.dart';

abstract class SkillsGroupAbstract {
  const SkillsGroupAbstract({
    required this.id,
    required this.skills,
    required this.groupName,
  });
  final int id;
  final List<Symptom> skills;
  final String groupName;
}
