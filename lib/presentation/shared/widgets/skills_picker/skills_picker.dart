import 'package:migr_proj/src/main/domain/bloc/app_bloc.dart';

import 'package:migr_proj/src/symptoms/skills_group_abstract/skills_group_abstract.dart';
import 'package:migr_proj/src/symptoms/symptom_model/symptom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:migr_proj/presentation/shared/scroll_component/scroll_clean_behavior.dart';
import 'package:migr_proj/presentation/shared/widgets/search_field/search_field.dart';
import 'package:migr_proj/presentation/shared/widgets/skills_picker/collapsed_list.dart';
import 'package:migr_proj/presentation/shared/widgets/skills_picker/custom_hobbies_content.dart';
import 'package:migr_proj/presentation/shared/widgets/skills_picker/mixins/skills_picker_mixin.dart';
import 'package:migr_proj/resources/resources.dart';

class SkillsPicker extends StatefulWidget {
  const SkillsPicker({
    required this.searchFieldName,
    required this.skillGroups,
    required this.checkedSkills,
    required this.searchController,
    required this.scrollController,
    required this.onMark,
    required this.onUnmark,
    this.onCustomHobbyAdded,
    this.onCustomHobbyCancelled,
    this.customSymptoms,
    this.isHobbyPicker = false,
    Key? key,
  }) : super(key: key);
  final TextEditingController searchController;
  final String searchFieldName;

  final List<SkillsGroupAbstract> skillGroups;
  final List<int> checkedSkills;
  final List<Symptom>? customSymptoms;

  final Function(int) onMark;
  final Function(int) onUnmark;

  final Function(int)? onCustomHobbyCancelled;
  final Function(String)? onCustomHobbyAdded;

  final ScrollController scrollController;
  final bool isHobbyPicker;

  @override
  _SkillsPickerState createState() => _SkillsPickerState();
}

class _SkillsPickerState extends State<SkillsPicker> with SkillsPickerMixin {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return Column(
          children: [
            Container(
              height: 35.0,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: LightColors.text.withOpacity(0.07),
              ),
              child: SearchField(
                controller: widget.searchController,
                fieldName: widget.searchFieldName,
                prefixIcon: getPrefixIcon,
                filledColor: Colors.transparent,
                onChange: (fieldText) => onChange(),
                isSuffixVisible: isSuffixVisible,
              ),
            ),
            if (widget.isHobbyPicker && widget.customSymptoms != null)
              CustomHobbiesContent(
                isButtonActive: isAddButtonActive,
                customSymptoms: widget.customSymptoms!,
                onCancelled: widget.onCustomHobbyCancelled,
                onAdded: addHobby,
              ),
            Expanded(
              child: ScrollConfiguration(
                behavior: ScrollCleanBehavior(),
                child: ListView.builder(
                  controller: widget.scrollController,
                  itemCount: tempSymptomsGroups.length,
                  itemBuilder: (ctx, index) {
                    return CollapsedList(
                      symptoms: tempSymptomsGroups[index].skills,
                      skillsHeader: tempSymptomsGroups[index].groupName,
                      checkedSkills: widget.checkedSkills,
                      isSearch: isListExpanded,
                      onMark: widget.onMark,
                      onUnmark: widget.onUnmark,
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
