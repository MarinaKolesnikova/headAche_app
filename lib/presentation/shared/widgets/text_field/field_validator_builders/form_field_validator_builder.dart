import 'package:flutter/material.dart';

import 'package:migr_proj/presentation/shared/widgets/text_field/field_validator_builders/text_field_validator_builder.dart';
import 'package:migr_proj/resources/dictionary/data/validation_dictionary/validation_dictionary.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class TextFieldValidatorsBuilder {
  const TextFieldValidatorsBuilder._();

  static FormFieldValidator<String?> emailValidator(
    BuildContext context, {
    required ValidationDictionary validationDictionary,
  }) {
    return FormBuilderValidators.compose(
      [
        TextFieldValidators.emailValidator(
          context,
          errorDictionary: validationDictionary,
        ),
      ],
    );
  }
}
