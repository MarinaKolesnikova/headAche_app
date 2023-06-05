import 'package:migr_proj/presentation/shared/widgets/check_box/light_sort_arrows.dart';
import 'package:migr_proj/resources/dictionary/data/home_dictionary/home_dictionary.dart';
import 'package:migr_proj/resources/resources.dart';

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';

class Filters extends StatefulWidget {
  const Filters({Key? key}) : super(key: key);

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  bool isAdvertisement = false;
  bool isVotes = false;
  bool isEvents = false;
  @override
  Widget build(BuildContext context) {
    final HomeDictionary dict = dictionaryManager.getSelectedData.home;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0).add(const EdgeInsets.only(top: 10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LightSortArrows(
            isChecked: isAdvertisement,
            onChange: (isChecked) {
              setState(() {
                isAdvertisement = isChecked;
              });
              onCheckboxChange();
            },
            labelWidget: getLabel(dict.date),
          ),
          LightSortArrows(
            isChecked: isVotes,
            onChange: (isChecked) {
              setState(() {
                isVotes = isChecked;
              });
              onCheckboxChange();
            },
            labelWidget: getLabel(dict.symptoms),
          ),
          LightSortArrows(
            isChecked: isEvents,
            onChange: (isChecked) {
              setState(() {
                isEvents = isChecked;
              });
              onCheckboxChange();
            },
            labelWidget: getLabel(dict.painLevel),
          ),
        ],
      ),
    );
  }

  Widget getLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Text(
        text,
        style: LightTextStyles.poppinsS12W400(
          color: LightColors.text.withOpacity(0.8),
          letterSpacing: 0.1,
        ),
      ),
    );
  }

  void onCheckboxChange() {
    EasyDebounce.debounce(
      'employee-search',
      Duration(milliseconds: 200),
      () {
        // context.read<NewsFeedBloc>().add(
        //       SearchNewsEvent(
        //         isAdvert: isAdvertisement,
        //         isEvent: isEvents,
        //            isPoll: isVotes,
        //         onFetch: (news) {},
        //       ),
        //     );
      },
    );
  }
}
