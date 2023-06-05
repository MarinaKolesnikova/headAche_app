import 'package:migr_proj/presentation/attack_creation/creation_pages/first_creation_page.dar t';
import 'package:migr_proj/presentation/attack_creation/creation_pages/second_creation_page.da rt';
import 'package:migr_proj/presentation/attack_creation/creation_pages/third_creation_page.dar t';
import 'package:migr_proj/presentation/shared/mixins/page_view_mixin.dart';
import 'package:migr_proj/src/attack/domain/attack_bloc.dart';
import 'package:migr_proj/src/shared/layouts/main_layout.dart';
import 'package:flutter/material.dart';
class AttackCreation extends StatefulWidget {
  const AttackCreation({Key? key}) : super(key: key);
  @override
  State<AttackCreation> createState() => _AttackCreationState();
}
class _AttackCreationState extends State<AttackCreation> with PagedViewMixin { List<Widget> pages(BuildContext context) {
    final treatments = context.read<AttackBloc>().state.treatmentsGroup;
    return [
      FirstCreationPage(
        pickedGroups: treatments,
      ),
      SecondCreationPage(),
      ThirdCreationPage(),
]; }
  late final PageController controller;
  @override
  void initState() {
    super.initState();
    controller = PageController();
  }
  @override
  Widget build(BuildContext context) {
    return MainLayout.withFocusLayout(
      child: Expanded(
        child: Stack(
          children: <Widget>[
            buildPageView(
              pages(context),
              controller,
),
            buildCircleIndicator(pages(context).length),
          ],
), ),
); }
}