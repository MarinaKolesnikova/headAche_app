import 'package:migr_proj/presentation/shared/widgets/divider/divider.dart';
import 'package:migr_proj/src/symptoms/editable_skills_model/editable_skill_model.dart';
import 'package:migr_proj/src/symptoms/symptom_model/symptom.dart';

import 'package:flutter/material.dart';
import 'package:migr_proj/presentation/shared/widgets/skills_picker/mixins/collapsed_list_mixin.dart';
import 'package:migr_proj/presentation/shared/widgets/skills_picker/mixins/is_checked_mixin.dart';

import 'package:migr_proj/presentation/shared/scroll_component/scroll_clean_behavior.dart';
import 'package:migr_proj/presentation/shared/widget_interfaces/animation_state.dart';

import 'package:migr_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';
import 'package:migr_proj/presentation/shared/widgets/skills_picker/collapsed_list_item.dart';
import 'package:migr_proj/presentation/shared/widgets/skills_picker/list_header.dart';

class CollapsedList extends StatefulWidget {
  const CollapsedList({
    required this.skillsHeader,
    required this.symptoms,
    required this.checkedSkills,
    required this.onMark,
    required this.onUnmark,
    this.isExpanded = false,
    this.isSearch = false,
    Key? key,
  }) : super(key: key);
  final String skillsHeader;
  final List<Symptom> symptoms;
  final List<int> checkedSkills;
  final bool isExpanded;
  final bool isSearch;
  final Function(int) onMark;
  final Function(int) onUnmark;

  @override
  _CollapsedListState createState() => _CollapsedListState();
}

class _CollapsedListState extends AnimationState<CollapsedList> with IsChecked, CollapsedListMixin {
  @override
  void didUpdateWidget(covariant CollapsedList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isSearch) {
      isExpanded = true;
    }

    if (oldWidget.isSearch != widget.isSearch) {
      createAnimation();

      if (widget.isSearch == true) {
        animationController.forward();
      } else {
        animationController.reverse();
      }

      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NonAnimatedInkWell(
          onTap: expandList,
          child: ListHeader(
            headerLabel: widget.skillsHeader,
            isExpand: isExpanded,
          ),
        ),
        ClipRRect(
          child: SizedBox(
            height: widget.isSearch && isExpanded ? 45.0 * widget.symptoms.length : sizeAnimation.value,
            child: ScrollConfiguration(
              behavior: ScrollCleanBehavior(),
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (ctx, index) => LightDivider(),
                itemCount: widget.symptoms.length,
                itemBuilder: (ctx, index) {
                  final symptom = widget.symptoms[index];
                  return CollapsedListItem(
                    onChange: (isMarked) {
                      onChanged(
                        isChecked: isMarked,
                        id: symptom.id!,
                      );
                    },
                    skillModel: EditableSkillModel(
                      isChecked: isChecked(symptom, widget.checkedSkills),
                      symptom: symptom,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        if (isExpanded) LightDivider(),
      ],
    );
  }
}
