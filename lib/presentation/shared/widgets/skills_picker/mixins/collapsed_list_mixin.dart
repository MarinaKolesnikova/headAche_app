import 'package:flutter/material.dart';
import 'package:migr_proj/presentation/shared/widget_interfaces/animation_state.dart';
import 'package:migr_proj/presentation/shared/widgets/skills_picker/collapsed_list.dart';

mixin CollapsedListMixin<T extends CollapsedList> on AnimationState<T> {
  late bool isExpanded;
  late Animation<double> sizeAnimation;

  @override
  void initState() {
    super.initState();
    isExpanded = widget.isExpanded;
    createAnimation();
    if (widget.isSearch) {
      isExpanded = true;
      animationController.forward();
    }
  }

  void createAnimation() {
    final Animation<double> curve = CurvedAnimation(parent: animationController, curve: Curves.easeInOut);
    sizeAnimation = Tween<double>(begin: 0.0, end: 45.0 * widget.symptoms.length).animate(curve);
  }

  void onChanged({
    required bool isChecked,
    required int id,
  }) {
    if (isChecked) {
      widget.onMark(id);
    } else {
      widget.onUnmark(id);
    }
  }

  void expandList() {
    setState(
      () {
        isExpanded = !isExpanded;
        if (isExpanded) {
          animationController.forward();
        } else {
          animationController.reverse();
        }
      },
    );
  }

  @override
  Duration get animationDuration => Duration(milliseconds: 300);
}
