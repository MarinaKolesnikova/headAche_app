import 'package:migr_proj/presentation/shared/widgets/wrap_chip/light_chip.dart';
import 'package:migr_proj/src/symptoms/symptom_model/symptom.dart';

import 'package:flutter/material.dart';

class ChipsBlock extends StatelessWidget {
  const ChipsBlock({
    required this.isEditable,
    required this.onCancelled,
    required this.symptoms,
    Key? key,
  }) : super(key: key);
  final List<Symptom> symptoms;
  final Function(int id)? onCancelled;
  final bool isEditable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Wrap(
        spacing: 5.0,
        runSpacing: 5.0,
        clipBehavior: Clip.hardEdge,
        children: symptoms.map(
          (element) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                LightChip(
                  symptom: element,
                  isEditable: isEditable,
                  onCancelled: (value) {
                    onCancelled?.call(value.id!);
                  },
                ),
              ],
            );
          },
        ).toList(),
      ),
    );
  }
}
