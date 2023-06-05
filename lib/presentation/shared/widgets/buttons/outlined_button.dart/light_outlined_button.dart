import 'package:migr_proj/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:migr_proj/presentation/shared/widgets/buttons/outlined_button.dart/outline_button_mixin.dart';

class LightOutlineButton extends StatelessWidget with OutlineButtonMixin {
  const LightOutlineButton({
    required this.text,
    required this.onTap,
    this.color,
    this.heigth,
    this.borderColor,
    this.padding,
    this.textStyle,
    this.isDisable = false,
    Key? key,
  }) : super(key: key);

  final String text;

  final VoidCallback onTap;

  final Color? color;
  final Color? borderColor;
  final double? heigth;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final bool isDisable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRad,
          border: getBorder(
            borderColor: color ?? LightColors.borderColor,
            isDisable: isDisable,
          ),
          color: getButtonColor(
            color: color,
            isDisable: isDisable,
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              if (!isDisable) {
                onTap.call();
              }
            },
            focusColor: getSplashColor(isDisable: isDisable),
            splashColor: getSplashColor(isDisable: isDisable),
            highlightColor: getSplashColor(isDisable: isDisable),
            borderRadius: borderRad,
            child: Container(
              height: heigth ?? 53.0,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: textStyle ??
                        LightTextStyles.poppinsS18W500(
                          height: 1.2,
                          color: getTextColor(
                            isDisable: isDisable,
                            borderColor: color ?? LightColors.borderColor,
                          ),
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
