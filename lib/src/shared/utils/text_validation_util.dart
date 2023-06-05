import 'package:migr_proj/resources/dictionary/data/validation_dictionary/validation_dictionary.dart';
import 'package:migr_proj/resources/dictionary/dictionary_manager.dart';

class TextValidationUtil {
  static final RegExp cyrrilicExp = RegExp(r'^([\u0401\u0451\u0410-\u044f\s-]{1,})$');
  static final RegExp numbersExp = RegExp(r'^([0-9]{1,})+$');

  static RegExp passwordReg = RegExp(
    r"^(?=.*[0-9]){0,}(?=.*[a-zA-Z~`\u0401\u0451\u0410-\u044f\x22!\-@#$%^&*()_+={[}|:;\'<,>.?\/\]]){1,}[\w\W\d~`\u0401\u0451\u0410-\u044f\x22!-@#$%^&*()_+={[}|:;\'<,>.?\/\]]{8,}$",
  );
  static RegExp emailReg = RegExp(
    r"^(([a-zA-Z]|\d|[\x22!#$%&'\-*+?^_`~|\/}{]){1,})+(([a-zA-Z]|\d|[.,;:)(\]\[<>]|[\x22!#$%&'\-*+?^_`~|\/}{]){1,})@(([a-zA-Z]|\d){1,})\.(([a-zA-Z]|\d){1,})$",
    caseSensitive: false,
  );

  static final ValidationDictionary dict = dictionaryManager.getSelectedData.validation;

  static String? errorCyrrilicOnly(String text) {
    if (!cyrrilicExp.hasMatch(text)) return dict.cyrillicOnly;
    return null;
  }

  static String? errorNumbersOnly(String text) {
    if (!numbersExp.hasMatch(text)) return dict.numbersOnly;
    return null;
  }

  static String? phoneNumberFormat(String text) {
    if (text.length != 10) return dict.wrongPhoneFormat;
    return null;
  }

  static String? passwordFormat(String text) {
    if (!passwordReg.hasMatch(text)) return dict.wrongPasswordFormat;
    return null;
  }

  static String? emailFormat(String text) {
    if (!emailReg.hasMatch(text)) return dict.emailValidationError;
    return null;
  }

  static bool isCyrrilicOnly(String text) => cyrrilicExp.hasMatch(text);

  static bool isNumbersOnly(String text) => numbersExp.hasMatch(text);
  static bool isPhoneNumber(String text) => numbersExp.hasMatch(text) && text.length == 10;
  static bool isEmail(String text) => emailReg.hasMatch(text) && text.isNotEmpty;
}
