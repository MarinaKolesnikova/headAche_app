import 'package:flutter/services.dart';

class WhiteSpaceTrimming extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final text = newValue.text.replaceAll(' ', '');

    if (text == newValue.text) {
      return newValue.copyWith(
        text: text,
        selection: TextSelection.collapsed(
          offset: newValue.selection.baseOffset,
        ),
      );
    } else {
      return oldValue;
    }
  }
}

class FirstWhiteSpaceTrimming extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final text = newValue.text.trimLeft();

    if (text == newValue.text || newValue.text.length<oldValue.text.length) {
      return newValue.copyWith(
        text: text,
        selection: TextSelection.collapsed(
          offset: newValue.selection.baseOffset,
        ),
      );
    } else {
      return oldValue;
    }
  }
}
