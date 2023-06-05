import 'package:migr_proj/src/symptoms/symptom_model/symptom.dart';

mixin IsChecked {
  bool isChecked(
    Symptom skill,
    List<int> checkedList,
  ) {
    final index = checkedList.indexWhere((element) => skill.id == element);
    return index != -1;
  }

  Iterable<Symptom> getSkillsInOrder(
    List<Symptom> skillList,
    int checkedItem,
  ) {
    final list = skillList.where((element) => checkedItem == element.id);
    return list;
  }
}
