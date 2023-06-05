import 'package:flutter/material.dart';
import 'package:migr_proj/resources/resources.dart';

mixin ButtonDialogMixin {
  Widget getText({
    required FontWeight fontWeight,
    required double fontSize,
    EdgeInsetsGeometry? padding,
    String? text,
    Color? color,
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
