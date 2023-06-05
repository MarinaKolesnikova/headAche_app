import 'package:migr_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';

import 'package:migr_proj/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LightSortArrows extends StatefulWidget {
  const LightSortArrows({
    required this.isChecked,
    required this.onChange,
    this.labelWidget,
    Key? key,
  }) : super(key: key);

  final bool isChecked;
  final Function(bool) onChange;
  final Widget? labelWidget;

  @override
  _LightSortArrowsState createState() => _LightSortArrowsState();
}

class _LightSortArrowsState extends State<LightSortArrows> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.isChecked;
  }

  @override
  void didUpdateWidget(covariant LightSortArrows oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isChecked != widget.isChecked) {
      isChecked = widget.isChecked;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: NonAnimatedInkWell(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              height: 22.0,
              width: 18.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.0, 2.0),
                    color: LightColors.shadowColor.withOpacity(0.25),
                    blurRadius: 5.0,
                  ),
                ],
              ),
              child: getImage(
                isSortUp: isChecked,
              ),
            ),
            widget.labelWidget ?? SizedBox.shrink(),
          ],
        ),
      ),
    );
  }

  void onTap() {
    isChecked = !isChecked;
    setState(() {});
    widget.onChange(isChecked);
  }

  Widget getImage({required bool isSortUp}) {
    if (!isSortUp) {
      return Padding(
        padding: const EdgeInsets.all(1.0),
        child: SvgPicture.asset(
          SvgPathPicker.sortUp,
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: SvgPicture.asset(
        SvgPathPicker.sortDown,
      ),
    );
  }
}
