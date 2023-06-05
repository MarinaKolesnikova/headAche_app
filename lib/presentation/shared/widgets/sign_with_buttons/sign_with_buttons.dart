import 'package:migr_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';
import 'package:migr_proj/resources/resources.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class SignWithButton extends StatelessWidget {
  const SignWithButton({
    required this.color,
    required this.iconPath,
    required this.text,
    required this.onTap,
    this.padding,
    this.height = 40.0,
    this.iconSize = 18.0,
    Key? key,
  }) : super(key: key);
  final double height;
  final Color color;
  final String iconPath;
  final String text;
  final double iconSize;
  final VoidCallback onTap;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return NonAnimatedInkWell(
      onTap: onTap,
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: Container(
          height: height,
          padding: const EdgeInsets.symmetric(horizontal: 9.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(2.0),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: SvgPicture.asset(
                  iconPath,
                  height: iconSize,
                  width: iconSize,
                ),
              ),
              Expanded(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: LightTextStyles.poppinsS14W400(color: LightColors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
