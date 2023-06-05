import 'package:migr_proj/src/symptoms/editable_skills_model/editable_skill_model.dart';
import 'package:flutter/material.dart';
import 'package:migr_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';
import 'package:migr_proj/resources/resources.dart';

class CollapsedListItem extends StatefulWidget {
  const CollapsedListItem({
    required this.skillModel,
    required this.onChange,
    Key? key,
  }) : super(key: key);
  final EditableSkillModel skillModel;
  final void Function(bool) onChange;

  @override
  _CollapsedListItemState createState() => _CollapsedListItemState();
}

class _CollapsedListItemState extends State<CollapsedListItem> {
  late bool isChecked;
  @override
  void initState() {
    super.initState();
    isChecked = widget.skillModel.isChecked;
  }

  @override
  void didUpdateWidget(covariant CollapsedListItem oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.skillModel.isChecked != widget.skillModel.isChecked) {
      isChecked = widget.skillModel.isChecked;

      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return NonAnimatedInkWell(
      onTap: onTap,
      child: Container(
        height: 44,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.skillModel.symptom.name!,
              style: LightTextStyles.poppinsS14W400(color: LightColors.text),
            ),
            if (isChecked)
              Icon(
                Icons.check,
                color: LightColors.text,
              ),
          ],
        ),
      ),
    );
  }

  void onTap() {
    setState(() {
      isChecked = !isChecked;
      widget.onChange(isChecked);
    });
  }
}
