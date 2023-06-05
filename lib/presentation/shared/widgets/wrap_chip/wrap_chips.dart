import 'package:migr_proj/presentation/shared/widgets/wrap_chip/chips_block.dart';
import 'package:migr_proj/resources/resources.dart';
import 'package:migr_proj/src/symptoms/symptom_model/symptom.dart';

import 'package:flutter/material.dart';

class WrapChips extends StatelessWidget {
  const WrapChips({
    required this.symptoms,
    required this.label,
    this.onCancelled,
    this.isEditable = false,
    Key? key,
  }) : super(key: key);
  final List<Symptom> symptoms;
  final String label;
  final Function(int index)? onCancelled;
  final bool isEditable;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              label,
              style: LightTextStyles.poppinsS12W400(color: LightColors.text),
            ),
          ],
        ),
        ChipsBlock(
          symptoms: symptoms,
          onCancelled: onCancelled,
          isEditable: isEditable,
        ),
      ],
    );
  }
}
