import 'package:migr_proj/presentation/shared/widgets/wrap_chip/chips_block.dart';
import 'package:migr_proj/src/symptoms/symptom_model/symptom.dart';

import 'package:flutter/material.dart';
import 'package:migr_proj/presentation/shared/widgets/skills_picker/add_button.dart';

class CustomHobbiesContent extends StatefulWidget {
  const CustomHobbiesContent({
    required this.isButtonActive,
    required this.customSymptoms,
    this.onCancelled,
    this.onAdded,
    Key? key,
  }) : super(key: key);
  final bool isButtonActive;
  final List<Symptom> customSymptoms;
  final Function(int)? onCancelled;
  final Function? onAdded;

  @override
  _CustomHobbiesContentState createState() => _CustomHobbiesContentState();
}

class _CustomHobbiesContentState extends State<CustomHobbiesContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: AddButton(
              onTap: () => widget.onAdded?.call(),
              isActive: widget.isButtonActive,
            ),
          ),
          ChipsBlock(
            symptoms: widget.customSymptoms,
            onCancelled: widget.onCancelled,
            isEditable: true,
          )
        ],
      ),
    );
  }
}
