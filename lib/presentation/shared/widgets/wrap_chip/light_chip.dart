import 'package:migr_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';
import 'package:migr_proj/resources/resources.dart';

import 'package:migr_proj/src/symptoms/symptom_model/symptom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LightChip extends StatelessWidget {
  const LightChip({
    required this.symptom,
    this.isEditable = false,
    this.onCancelled,
    Key? key,
  }) : super(key: key);
  final Symptom symptom;
  final bool isEditable;
  final Function(Symptom value)? onCancelled;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      decoration: getDecoration(),
      padding: EdgeInsets.only(
        left: 15.0,
        right: isEditable ? 2.0 : 15.0,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              symptom.name!,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: LightTextStyles.poppinsS12W400(
                color: LightColors.accentColor,
              ),
            ),
            if (isEditable)
              NonAnimatedInkWell(
                onTap: () {
                  onCancelled?.call(symptom);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: SizedBox(
                    height: 20.0,
                    width: 20.0,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SvgPicture.asset(
                        SvgPathPicker.cross,
                        color: LightColors.text,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Decoration getDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: LightColors.chipColor,
    );
  }
}
