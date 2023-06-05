import 'package:migr_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';
import 'package:flutter/material.dart';

import 'package:migr_proj/resources/resources.dart';
import './models/tab_bar_model.dart';

class TopTabBarItem extends StatelessWidget {
  const TopTabBarItem({
    required this.element,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final TabBarModel element;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: NonAnimatedInkWell(
        onTap: onTap,
        child: Align(
          child: Text(
            element.title,
            style: LightTextStyles.poppinsS18W500(),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
