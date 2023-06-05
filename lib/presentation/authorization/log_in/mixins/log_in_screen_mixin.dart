import 'package:migr_proj/presentation/authorization/log_in/login_screen.dart';
import 'package:flutter/material.dart';

import 'package:migr_proj/resources/dictionary/data/auth_dictionary/auth_dictionary.dart';
import 'package:migr_proj/resources/dictionary/dictionary_manager.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

mixin LogInScreenMixin<T extends LogInScreen> on State<T> {
  late final TextEditingController loginController;
  late final TextEditingController passwordController;
  late final GlobalKey<FormBuilderState> formKey;
  late bool isButtonDisable;
  String? errorText;

  final AuthDictionary dict = dictionaryManager.getSelectedData.auth;

  @override
  void initState() {
    super.initState();
    loginController = TextEditingController();
    passwordController = TextEditingController();
    isButtonDisable = true;
    formKey = GlobalKey<FormBuilderState>();
  }

  void onError(String? text) {
    if (mounted) {
      setState(() {
        errorText = text;
      });
    }
  }

  void onChange() {
    if (loginController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      setState(() {
        isButtonDisable = false;
      });
    } else if (isButtonDisable == false) {
      setState(() {
        isButtonDisable = true;
      });
    }
  }
}
