import 'package:flutter/material.dart';

import 'package:migr_proj/presentation/shared/widget_interfaces/animation_state.dart';
import 'package:migr_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';
import 'package:migr_proj/resources/resources.dart';

class GreenGrayButton extends StatefulWidget {
  const GreenGrayButton({
    required this.label,
    required this.isActive,
    required this.onTap,
    required this.activeColor,
    Key? key,
  }) : super(key: key);

  final String label;
  final bool isActive;

  final Color activeColor;
  final VoidCallback onTap;

  @override
  State<GreenGrayButton> createState() => _GreenGrayButtonState();
}

class _GreenGrayButtonState extends AnimationState<GreenGrayButton> {
  late final Animation colorAnimation;
  @override
  void initState() {
    super.initState();
    colorAnimation = ColorTween(
      begin: LightColors.darkGrey.withOpacity(0.4),
      end: widget.activeColor,
    ).animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return NonAnimatedInkWell(
      onTap: widget.isActive ? widget.onTap : () {},
      child: Container(
        height: 40.0,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10.0),
        decoration: buttonDecoration(isActive: widget.isActive),
        child: Center(
          child: Text(
            widget.label,
            style: LightTextStyles.poppinsS16W400(
              color: LightColors.white,
              height: 1.3,
            ),
          ),
        ),
      ),
    );
  }

  Decoration buttonDecoration({required bool? isActive}) {
    return BoxDecoration(
      color: isActive != true ? LightColors.darkGrey.withOpacity(0.5) : colorAnimation.value,
      borderRadius: BorderRadius.circular(20.0),
    );
  }

  @override
  Duration get animationDuration => Duration(milliseconds: 500);
}
