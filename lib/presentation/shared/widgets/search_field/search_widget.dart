import 'package:migr_proj/presentation/shared/widgets/check_box/filters.dart';
import 'package:migr_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';
import 'package:migr_proj/presentation/shared/widgets/search_field/mixins/search_widget_mixin.dart';
import 'package:migr_proj/presentation/shared/widgets/search_field/search_field.dart';
import 'package:migr_proj/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> with SearchWidgetMixin {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 100,
        decoration: getDecoration,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  SvgPathPicker.searchFat,
                  height: 30.0,
                  color: LightColors.text.withOpacity(0.7),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SizedBox(
                      height: 35.0,
                      child: SearchField(
                        isSuffixVisible: isSuffixVisible,
                        controller: textController,
                        fieldName: 'news_search',
                      ),
                    ),
                  ),
                ),
                NonAnimatedInkWell(
                  onTap: () {
                    setState(() {
                      isFavoritesSelected = !isFavoritesSelected;
                    });
                    onFavChanged();
                  },
                  child: getStarIcon,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Filters(),
            ),
          ],
        ),
      ),
    );
  }
}
