import 'package:migr_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';
import 'package:migr_proj/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuffixIcon extends StatelessWidget {
  const SuffixIcon({
    required this.controller,
    this.isVisible = false,
    this.suffixIcon,
    Key? key,
  }) : super(key: key);
  final bool isVisible;
  final Widget? suffixIcon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    if (suffixIcon == null) {
      return Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: NonAnimatedInkWell(
          onTap: () {
            if (isVisible) {
              controller.clear();
            }
          },
          child: SizedBox(
            height: 15.0,
            width: 15.0,
            child: SvgPicture.asset(
              SvgPathPicker.cross,
              color: isVisible ? LightColors.semiGrey : Colors.transparent,
            ),
          ),
        ),
      );
    }
    return suffixIcon!;
  }
}
