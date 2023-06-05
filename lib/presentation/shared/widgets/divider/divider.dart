import 'package:migr_proj/resources/resources.dart';
import 'package:flutter/material.dart';

class LightDivider extends StatelessWidget {
  const LightDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: 1.0,
      width: double.infinity,
      color: LightColors.text.withOpacity(0.15),
    );
  }
}
