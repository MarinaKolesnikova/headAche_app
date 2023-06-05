import 'package:flutter/material.dart';
import 'package:migr_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';

import 'package:migr_proj/resources/resources.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    required this.onTap,
    this.isActive = false,
    Key? key,
  }) : super(key: key);
  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: NonAnimatedInkWell(
        onTap: onTap,
        child: Container(
          height: 30.0,
          width: 70.0,
          decoration: BoxDecoration(
            color: isActive ? LightColors.green : LightColors.semiGrey,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Center(
            child: Text(
              '+ Add',
              style: LightTextStyles.poppinsS14W400(color: LightColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
