import 'package:migr_proj/resources/colors/light_colors.dart';
import 'package:flutter/material.dart';

class PreferedSizeContainer extends StatefulWidget implements PreferredSizeWidget {
  PreferedSizeContainer({
    required this.color,
    this.label,
    Key? key,
    this.height = 30.0,
    this.isShadow = false,
  })  : preferredSize = Size.fromHeight(height),
        super(key: key);
  final String? label;

  @override
  final Size preferredSize;
  final double height;
  final bool isShadow;
  final Color color;

  @override
  State<PreferedSizeContainer> createState() => _PreferedSizeContainerState();
}

class _PreferedSizeContainerState extends State<PreferedSizeContainer> {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, 0.5),
      child: Container(
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          boxShadow: getShadow,
          color: widget.color,
        ),
      ),
    );
  }

  List<BoxShadow>? get getShadow {
    if (widget.isShadow) {
      return [
        BoxShadow(
          blurRadius: 2.0,
          color: LightColors.shadowColor,
          offset: Offset(0.0, -5.0),
        ),
      ];
    }
    return null;
  }
}
