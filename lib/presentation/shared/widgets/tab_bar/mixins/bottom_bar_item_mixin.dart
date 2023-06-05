import 'package:migr_proj/resources/colors/light_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:migr_proj/presentation/shared/widget_interfaces/animation_state.dart';
import 'package:migr_proj/presentation/shared/widgets/tab_bar/light_tab_bar_item.dart';
import 'package:migr_proj/resources/light_text_styles/light_text_styles.dart';

mixin BottomTabBarItemMixin<T extends CustomBottomBarItem> on AnimationState<T> {
  @override
  void initState() {
    super.initState();
    animationController.forward();
  }

  @override
  Duration get animationDuration => Duration(milliseconds: 300);

  Color getTextActiveColor(Animation fadeAnimation) {
    if (widget.isSelected) return LightColors.text.withOpacity(fadeAnimation.value * 0.5 + 0.5);
    return LightColors.text.withOpacity(0.5);
  }

  Widget getActiveIcon() {
    if (widget.isSelected) {
      return ShaderMask(
        shaderCallback: (bounds) {
          return RadialGradient(
            center: Alignment.topLeft,
            radius: 1,
            colors: LightColors.iconGradient,
            tileMode: TileMode.mirror,
          ).createShader(bounds);
        },
        child: SvgPicture.asset(
          widget.tabData.activeIconPath,
          color: LightColors.lightPurpleColor,
        ),
      );
    }

    return SvgPicture.asset(
      widget.tabData.iconPath,
      color: LightColors.lightPurpleColor,
    );
  }

  TextStyle getTextActiveStyle(Animation fadeAnimation) {
    FontWeight weight = FontWeight.w400;
    if (widget.isSelected) {
      weight = FontWeight.w500;
    }
    return LightTextStyles.poppins(
      fontWeight: weight,
      height: 1.15,
      letterSpacing: 0.5,
      color: getTextActiveColor(fadeAnimation),
      fontSize: widget.fontSize ?? 11.0,
    );
  }

  void onTapAnimated() {
    animationController.reset();
    animationController.forward();
    widget.onTap(widget.tabData);
  }

  BoxDecoration itemDecoration() {
    return BoxDecoration(
      color: LightColors.darkPurpleAccentColor.withOpacity(0.5),
    );
  }

  double get iconSize => widget.iconSize ?? 24.0;
}
