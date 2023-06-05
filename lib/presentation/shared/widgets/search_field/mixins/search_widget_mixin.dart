import 'package:migr_proj/presentation/shared/widgets/search_field/search_widget.dart';

import 'package:migr_proj/resources/resources.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

mixin SearchWidgetMixin<T extends SearchWidget> on State<T> {
  late final TextEditingController textController;
  bool isSuffixVisible = false;
  bool isFavoritesSelected = false;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    textController.addListener(onSearchChange);
  }

  @override
  void dispose() {
    textController.removeListener(onSearchChange);
    textController.dispose();
    super.dispose();
  }

  void onFavChanged() {}

  void onSearchChange() {
    EasyDebounce.debounce(
      'employee-search',
      Duration(milliseconds: 200),
      () {},
    );

    isSuffixVisible = textController.text.isNotEmpty;
  }

  Widget get getStarIcon {
    return SvgPicture.asset(
      isFavoritesSelected ? SvgPathPicker.selected : SvgPathPicker.unselected,
      height: 30.0,
      color: LightColors.text.withOpacity(0.7),
    );
  }

  BoxDecoration get getDecoration {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(5.0),
    );
  }
}
