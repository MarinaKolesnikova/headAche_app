import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:migr_proj/presentation/shared/widgets/text_field/light_text_field.dart';
import 'package:migr_proj/resources/colors/light_colors.dart';
import 'package:migr_proj/resources/light_text_styles/light_text_styles.dart';
import 'package:migr_proj/resources/paths/svg_paths.dart';

mixin LightTextFieldMixin<T extends LightTextField> on State<T> {
  late final TextEditingController textController;
  late bool isObscure;

  @override
  void initState() {
    super.initState();
    textController = widget.controller;
    isObscure = widget.textObscure;
  }

  InputDecoration get getDecoration {
    return InputDecoration(
      hintText: widget.hintText,
      alignLabelWithHint: true,
      label: widget.label,
      prefixIcon: widget.prefixIcon,
      contentPadding: textFieldPadding,
      hintStyle: widget.hintTextStyle ??
          LightTextStyles.poppinsS16W400(
            color: widget.hintTextColor,
            height: 1.5,
          ),
      enabledBorder: getBorder,
      focusedBorder: getBorder,
      errorBorder: InputBorder.none,
      suffixIcon: widget.textObscure ? getObscureIcon() : widget.suffixIcon,
      fillColor: widget.filledColor,
      suffixIconConstraints: getBoxConstraints,
      prefixIconConstraints: getPrefixBoxConstraints,
      errorMaxLines: 3,
      errorStyle: LightTextStyles.poppinsS12W400(color: Colors.red),
    );
  }

  BoxConstraints get getBoxConstraints {
    return BoxConstraints(
      maxWidth: 30.0,
      maxHeight: 40.0,
      minHeight: 40.0,
    );
  }

  BoxConstraints get getPrefixBoxConstraints {
    return BoxConstraints(
      maxWidth: 25.0,
      maxHeight: 20.0,
      minHeight: 20.0,
    );
  }

  InputBorder get getBorder => UnderlineInputBorder(
        borderSide: BorderSide(
          color: widget.filledColor ?? LightColors.black,
          width: 0.5,
        ),
      );

  EdgeInsets get textFieldPadding => EdgeInsets.zero;

  Widget getObscureIcon() {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        isObscure = !isObscure;
        setState(() {});
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset(
            isObscure ? SvgPathPicker.obscureIcon : SvgPathPicker.showIcon,
            color: widget.labelStyle?.color ?? widget.hintTextColor,
            height: 24.0,
          ),
        ],
      ),
    );
  }
}
