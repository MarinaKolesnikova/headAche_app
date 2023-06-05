import 'package:flutter/material.dart';

import 'package:migr_proj/resources/dictionary/data/validation_dictionary/validation_dictionary.dart';

class TextFieldValidators {
  TextFieldValidators._();

  static RegExp emailReg = RegExp(
    r"^(([a-zA-Z]|\d|[\x22!#$%&'\-*+?^_`~|\/}{]){1,})+(([a-zA-Z]|\d|[.,;:)(\]\[<>]|[\x22!#$%&'\-*+?^_`~|\/}{]){1,})@(([a-zA-Z\-]|\d|){1,})\.(([a-zA-Z]|\d){1,})$",
    caseSensitive: false,
  );

  static FormFieldValidator<String> emailValidator(
    BuildContext context, {
    required ValidationDictionary errorDictionary,
  }) {
    return (valueCandidate) {
      if (valueCandidate?.isNotEmpty == true) {
        if (emailReg.hasMatch(valueCandidate!.trim())) {
          return null;
        }
        return errorDictionary.emailValidationError;
      }
      return null;
    };
  }
}
