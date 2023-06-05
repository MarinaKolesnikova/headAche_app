import 'package:flutter/services.dart';

class MaxCharacters300 extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.length > 300) {
      return oldValue;
    }
    return newValue;
  }
}

class MaxCharacters1000 extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.length > 1000) {
      return oldValue;
    }
    return newValue;
  }
}
