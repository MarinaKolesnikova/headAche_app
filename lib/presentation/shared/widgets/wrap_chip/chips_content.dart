import 'package:migr_proj/presentation/shared/widgets/wrap_chip/wrap_chips.dart';

import 'package:migr_proj/src/symptoms/symptom_model/symptom.dart';
import 'package:flutter/material.dart';

class ChipsContent extends StatelessWidget {
  const ChipsContent({
    required this.know,
    required this.hobbies,
    required this.inform,
    this.isEditable = false,
    Key? key,
  }) : super(key: key);

  final List<Symptom> know;
  final List<Symptom> inform;
  final List<Symptom> hobbies;
  final bool isEditable;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (know.isNotEmpty)
          WrapChips(
            label: '',
            symptoms: know,
            isEditable: isEditable,
          ),
        if (inform.isNotEmpty)
          WrapChips(
            label: '',
            symptoms: inform,
            isEditable: isEditable,
          ),
        if (hobbies.isNotEmpty)
          WrapChips(
            label: '',
            symptoms: hobbies,
            isEditable: isEditable,
          ),
      ],
    );
  }
}
