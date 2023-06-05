import 'package:migr_proj/resources/resources.dart';
import 'package:flutter/material.dart';

class MandatoryLabel extends StatelessWidget {
  const MandatoryLabel({Key? key}) : super(key: key);
  AuthDictionary get dictionary => dictionaryManager.getSelectedData.auth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26.0).add(
        const EdgeInsets.only(top: 4.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            dictionary.mandatoryFields,
            style: LightTextStyles.poppinsS14W400(
              color: LightColors.primaryColor,
              height: 1.8,
            ),
          ),
        ],
      ),
    );
  }
}
