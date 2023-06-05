import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:migr_proj/presentation/shared/widgets/text_field/mixins/light_text_field_mixin.dart';
import 'package:migr_proj/resources/colors/light_colors.dart';
import 'package:migr_proj/resources/light_text_styles/light_text_styles.dart';

class LightTextField extends StatefulWidget {
  const LightTextField({
    required this.fieldName,
    required this.controller,
    this.width,
    this.padding,
    this.label,
    this.maxLines,
    this.hintText,
    this.validator,
    this.textStyle,
    this.labelStyle,
    this.fieldLabel,
    this.filledColor,
    this.keyboardType,
    this.hintTextStyle,
    this.inputFormatters,
    this.textAlignVertical,
    this.hintTextColor = LightColors.white,
    this.minLines = 1,
    this.expands = false,
    this.withBorder = true,
    this.textObscure = false,
    this.autoValidateMode = AutovalidateMode.disabled,
    this.textAlign = TextAlign.start,
    this.onChanged,
    this.fieldKey,
    this.prefixIcon,
    this.suffixIcon,
    this.textInputAction,
    this.onSubmitted,
    this.dragStartBehavior,
    this.onEditingComplete,
    this.textCapitalization = TextCapitalization.none,
    Key? key,
    this.labelText,
  }) : super(key: key);
  final int minLines;
  final String fieldName;
  final bool withBorder;
  final bool textObscure;
  final TextAlign textAlign;
  final Color hintTextColor;
  final TextEditingController controller;
  final TextCapitalization textCapitalization;
  final AutovalidateMode autoValidateMode;

  final String? fieldLabel;
  final double? width;
  final int? maxLines;
  final String? hintText;
  final Color? filledColor;
  final TextStyle? labelStyle;
  final Widget? label;
  final TextStyle? textStyle;
  final TextStyle? hintTextStyle;
  final EdgeInsetsGeometry? padding;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String?)? onChanged;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? labelText;
  final bool expands;
  final TextAlignVertical? textAlignVertical;
  final GlobalKey<FormBuilderFieldState>? fieldKey;
  final TextInputAction? textInputAction;
  final Function(String?)? onSubmitted;
  final DragStartBehavior? dragStartBehavior;
  final VoidCallback? onEditingComplete;
  @override
  _LightTextFieldState createState() => _LightTextFieldState();
}

class _LightTextFieldState extends State<LightTextField> with LightTextFieldMixin {
  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      key: widget.fieldKey,
      dragStartBehavior: widget.dragStartBehavior ?? DragStartBehavior.start,
      textInputAction: widget.textInputAction,
      textAlign: widget.textAlign,
      textAlignVertical: widget.textAlignVertical,
      expands: widget.expands,
      name: widget.fieldName,
      textCapitalization: widget.textCapitalization,
      controller: textController,
      obscureText: isObscure,
      minLines: !widget.expands ? widget.minLines : null,
      maxLines: !widget.expands ? (widget.maxLines ?? widget.minLines) : null,
      keyboardType: widget.keyboardType,
      autovalidateMode: widget.autoValidateMode,
      inputFormatters: widget.inputFormatters,
      style: widget.textStyle ?? LightTextStyles.poppinsS16W400(height: 1.5),
      onEditingComplete: widget.onEditingComplete ?? FocusScope.of(context).nextFocus,
      decoration: getDecoration,
      validator: widget.validator,
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,
    );
  }
}
