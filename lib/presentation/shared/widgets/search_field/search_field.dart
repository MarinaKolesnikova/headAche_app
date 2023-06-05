import 'package:migr_proj/presentation/shared/widgets/search_field/suffix_icon.dart';
import 'package:migr_proj/presentation/shared/widgets/text_field/light_text_field.dart';
import 'package:migr_proj/resources/resources.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    required this.controller,
    required this.fieldName,
    this.hintText,
    this.onChange,
    this.prefixIcon,
    this.suffixIcon,
    this.isSuffixVisible = true,
    this.filledColor = LightColors.semiGrey,
    Key? key,
  }) : super(key: key);
  final TextEditingController controller;
  final String fieldName;
  final String? hintText;
  final Function(String?)? onChange;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool isSuffixVisible;
  final Color? filledColor;

  @override
  Widget build(BuildContext context) {
    return LightTextField(
      controller: controller,
      fieldName: fieldName,
      hintText: hintText,
      textStyle: LightTextStyles.poppinsS16W400(color: LightColors.text, height: 1.3),
      hintTextStyle: LightTextStyles.poppinsS16W400(color: LightColors.semiGrey, height: 1.3),
      filledColor: filledColor,
      onChanged: onChange,
      padding: EdgeInsets.zero,
      prefixIcon: prefixIcon,
      suffixIcon: SuffixIcon(
        isVisible: isSuffixVisible,
        controller: controller,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
