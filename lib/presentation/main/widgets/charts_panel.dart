import 'package:migr_proj/resources/resources.dart';
import 'package:flutter/material.dart';

class ChartsPanel extends StatelessWidget {
  const ChartsPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30.0, top: 40.0),
      padding: const EdgeInsets.all(20.0),
      decoration: getDecoration(),
      height: 150.0,
    );
  }

  BoxDecoration getDecoration() {
    return BoxDecoration(
      color: LightColors.mainItemsColor,
      borderRadius: BorderRadius.circular(30.0),
      boxShadow: [
        BoxShadow(
          color: LightColors.shadowColor,
          blurRadius: 10.0,
          spreadRadius: 5.0,
        ),
      ],
    );
  }
}
