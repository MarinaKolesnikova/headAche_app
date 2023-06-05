import 'package:migr_proj/resources/colors/light_colors.dart';
import 'package:flutter/material.dart';
import 'package:migr_proj/resources/light_text_styles/light_text_styles.dart';

mixin DialogMixin {
  Widget getText({
    required FontWeight fontWeight,
    required double fontSize,
    EdgeInsetsGeometry? padding,
    String? text,
    TextAlign? messageTextAlignment,
  }) {
    if (text != null) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0).add(padding ?? EdgeInsets.zero),
        child: Text(
          text,
          textAlign: messageTextAlignment ?? TextAlign.center,
          style: LightTextStyles.poppins(
            fontWeight: fontWeight,
            height: 1.5,
            fontSize: fontSize,
            color: LightColors.text,
          ),
        ),
      );
    }
    return SizedBox.shrink();
  }
}
