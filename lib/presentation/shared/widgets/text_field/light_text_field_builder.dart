import 'package:migr_proj/resources/dictionary/data/validation_dictionary/validation_dictionary.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:migr_proj/presentation/shared/widgets/text_field/field_validator_builders/form_field_validator_builder.dart';
import 'package:migr_proj/presentation/shared/widgets/text_field/input_formaters/white_space_trimming.dart';
import 'package:migr_proj/presentation/shared/widgets/text_field/light_text_field.dart';

import 'package:migr_proj/resources/resources.dart';

enum LightTextFieldType {
  email,
  password,
  nonSpecific,
}

class LightTextFieldBuilder extends StatelessWidget {
  const LightTextFieldBuilder({
    required this.controller,
    required this.fieldPadding,
    required this.textFieldType,
    required this.textStyle,
    required this.labelStyle,
    this.filledColor,
    this.hintTextColor,
    this.keyboardType,
    this.textAlignVertical,
    this.formatters,
    this.textInputAction,
    this.validator,
    this.highPriorityValidator,
    this.onChanged,
    this.label,
    this.fieldKey,
    this.name,
    this.onEditingComplete,
    this.expands = false,
    this.isMandatory = false,
    this.maxLines = 1,
    this.minLines,
    this.onSubmitted,
    this.autoValidateMode = AutovalidateMode.disabled,
    Key? key,
  }) : super(key: key);

  factory LightTextFieldBuilder.login({
    required TextEditingController controller,
    String? label,
    String? fieldName,
    TextStyle? textStyle,
    TextStyle? labelStyle,
    Color? filledColor,
    void Function(String?)? onChange,
    GlobalKey<FormBuilderFieldState>? fieldKey,
    Key? key,
    bool isMandatory = false,
    EdgeInsetsGeometry fieldPadding = EdgeInsets.zero,
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
  }) {
    return LightTextFieldBuilder(
      controller: controller,
      fieldPadding: fieldPadding,
      textFieldType: LightTextFieldType.email,
      filledColor: filledColor,
      onChanged: onChange,
      isMandatory: isMandatory,
      label: label,
      key: key,
      fieldKey: fieldKey,
      name: fieldName,
      autoValidateMode: autovalidateMode,
      textStyle: textStyle ?? LightTextStyles.poppinsS16W400(),
      labelStyle: labelStyle ?? LightTextStyles.poppinsS16W400(),
    );
  }

  factory LightTextFieldBuilder.password({
    required TextEditingController controller,
    String? label,
    TextStyle? textStyle,
    TextStyle? labelStyle,
    Color? filledColor,
    Color? obsqureIconColor,
    bool isMandatory = false,
    String? Function(String?)? validator,
    void Function(String?)? onChange,
    final VoidCallback? onEditingComplete,
    Key? key,
    EdgeInsetsGeometry fieldPadding = EdgeInsets.zero,
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
  }) {
    return LightTextFieldBuilder(
      controller: controller,
      fieldPadding: fieldPadding,
      textFieldType: LightTextFieldType.password,
      filledColor: filledColor,
      validator: validator,
      onChanged: onChange,
      isMandatory: isMandatory,
      label: label,
      onEditingComplete: onEditingComplete,
      key: key,
      hintTextColor: obsqureIconColor,
      textStyle: textStyle ?? LightTextStyles.poppinsS16W400(),
      labelStyle: labelStyle ?? LightTextStyles.poppinsS16W400(),
      autoValidateMode: autovalidateMode,
    );
  }

  factory LightTextFieldBuilder.nonSpecific({
    required TextEditingController controller,
    required EdgeInsetsGeometry fieldPadding,
    TextStyle? textStyle,
    TextStyle? labelStyle,
    Color? filledColor,
    String? label,
    Key? key,
    void Function(String?)? onChange,
    bool isMandatory = false,
    bool expands = false,
    List<TextInputFormatter>? formatters,
    TextAlignVertical? textAlignVertical,
    TextInputType? keyboardType,
    int? maxLines,
    int? minLines,
    TextInputAction? textInputAction,
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
    Function(String?)? onSubmitted,
  }) {
    return LightTextFieldBuilder(
      controller: controller,
      fieldPadding: fieldPadding,
      textFieldType: LightTextFieldType.nonSpecific,
      filledColor: filledColor,
      onChanged: onChange,
      maxLines: maxLines,
      isMandatory: isMandatory,
      label: label,
      key: key,
      minLines: minLines,
      onSubmitted: onSubmitted,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      expands: expands,
      textStyle: textStyle ?? LightTextStyles.poppinsS16W400(),
      labelStyle: labelStyle ?? LightTextStyles.poppinsS16W400(),
      autoValidateMode: autovalidateMode,
      formatters: formatters,
      textAlignVertical: textAlignVertical,
    );
  }

  AuthDictionary get authDictionary => dictionaryManager.getSelectedData.auth;
  ValidationDictionary get validationDictionary => dictionaryManager.getSelectedData.validation;

  final bool isMandatory;
  final Color? filledColor;
  final Color? hintTextColor;

  final String? label;
  final String? name;

  final EdgeInsetsGeometry fieldPadding;
  final TextEditingController controller;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final String? Function(String?)? highPriorityValidator;
  final LightTextFieldType textFieldType;
  final AutovalidateMode autoValidateMode;
  final List<TextInputFormatter>? formatters;
  final TextAlignVertical? textAlignVertical;
  final TextInputType? keyboardType;
  final TextStyle textStyle;
  final TextStyle labelStyle;
  final bool expands;
  final int? maxLines;
  final int? minLines;
  final Function(String?)? onSubmitted;
  final VoidCallback? onEditingComplete;

  final GlobalKey<FormBuilderFieldState>? fieldKey;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    String mandatorySign = '';
    if (isMandatory) {
      mandatorySign = '*';
    }
    switch (textFieldType) {
      case LightTextFieldType.email:
        return buildLoginTextField(
          context,
          label ?? authDictionary.login,
          autovalidateMode: autoValidateMode,
          textStyle: textStyle,
          labelStyle: labelStyle,
        );
      case LightTextFieldType.password:
        return buildPasswordTextField(
          context,
          label ?? authDictionary.password,
          mandatorySign: mandatorySign,
          autovalidateMode: autoValidateMode,
          textStyle: textStyle,
          labelStyle: labelStyle,
        );
      case LightTextFieldType.nonSpecific:
        return nonSpesificTextField(
          context,
          label ?? authDictionary.password,
          mandatorySign: mandatorySign,
          autovalidateMode: autoValidateMode,
          textStyle: textStyle,
          labelStyle: labelStyle,
          formatters: formatters,
          expands: expands,
          maxLines: maxLines,
          label: label,
        );
    }
  }

  LightTextField nonSpesificTextField(
    BuildContext context,
    String name, {
    required TextStyle textStyle,
    String? mandatorySign,
    String? label,
    TextStyle? labelStyle,
    bool expands = false,
    int? maxLines,
    List<TextInputFormatter>? formatters,
    AutovalidateMode? autovalidateMode = AutovalidateMode.disabled,
  }) {
    return LightTextField(
      fieldName: name,
      padding: fieldPadding,
      controller: controller,
      filledColor: filledColor,
      onChanged: onChanged,
      key: key,
      textInputAction: textInputAction,
      inputFormatters: formatters,
      expands: expands,
      maxLines: maxLines,
      textAlignVertical: textAlignVertical,
      textStyle: textStyle,
      keyboardType: keyboardType,
      label: label != null
          ? Text(
              label,
              style: labelStyle,
            )
          : null,
    );
  }

  LightTextField buildLoginTextField(
    BuildContext context,
    String label, {
    required TextStyle textStyle,
    required TextStyle labelStyle,
    AutovalidateMode? autovalidateMode = AutovalidateMode.disabled,
  }) {
    return LightTextField(
      label: Text(
        label,
        style: labelStyle,
      ),
      autoValidateMode: autoValidateMode,
      filledColor: filledColor,
      textStyle: textStyle,
      fieldName: name ?? label,
      padding: fieldPadding,
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      inputFormatters: [
        WhiteSpaceTrimming(),
      ],
      validator: TextFieldValidatorsBuilder.emailValidator(
        context,
        validationDictionary: validationDictionary,
      ),
      onChanged: onChanged,
      fieldKey: fieldKey,
    );
  }

  LightTextField buildPasswordTextField(
    BuildContext context,
    String label, {
    required TextStyle textStyle,
    required TextStyle labelStyle,
    String? mandatorySign,
    AutovalidateMode? autovalidateMode = AutovalidateMode.disabled,
  }) {
    return LightTextField(
      textObscure: true,
      hintTextColor: hintTextColor ?? LightColors.white,
      controller: controller,
      fieldName: authDictionary.password,
      label: Text(
        label,
        style: labelStyle,
      ),
      filledColor: filledColor,
      textStyle: textStyle,
      padding: fieldPadding,
      inputFormatters: [
        WhiteSpaceTrimming(),
      ],
      autoValidateMode: autoValidateMode,
      onChanged: onChanged,
      key: key,
      onEditingComplete: onEditingComplete,
    );
  }
}
