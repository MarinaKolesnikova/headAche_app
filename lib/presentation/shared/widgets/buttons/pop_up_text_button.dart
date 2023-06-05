import 'package:flutter/material.dart';
import 'package:migr_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';
import 'package:migr_proj/resources/resources.dart';

class PopUpTextButton extends StatelessWidget {
  const PopUpTextButton({
    required this.action,
    required this.title,
    Key? key,
  }) : super(key: key);
  final VoidCallback action;
  final String title;

  @override
  Widget build(BuildContext context) {
    return NonAnimatedInkWell(
      onTap: action,
      child: Container(
        height: 45.0,
        alignment: Alignment.center,
        child: Text(
          title,
          style: LightTextStyles.poppinsS18W500(color: LightColors.white),
        ),
      ),
    );
  }
}
