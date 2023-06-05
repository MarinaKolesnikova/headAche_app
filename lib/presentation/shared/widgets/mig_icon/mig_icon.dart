import 'package:migr_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';
import 'package:migr_proj/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MigIcon extends StatelessWidget {
  const MigIcon({
    required this.svgPath,
    this.size,
    this.onTap,
    Key? key,
  }) : super(key: key);
  final String svgPath;
  final VoidCallback? onTap;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return NonAnimatedInkWell(
      onTap: onTap ?? () {},
      child: SizedBox(
        height: size,
        child: ShaderMask(
          shaderCallback: (bounds) {
            return RadialGradient(
              center: Alignment.topLeft,
              radius: 1,
              colors: LightColors.onPanelIcon,
              tileMode: TileMode.mirror,
              stops: [0.5, 0.9],
            ).createShader(bounds);
          },
          child: SvgPicture.asset(
            svgPath,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
