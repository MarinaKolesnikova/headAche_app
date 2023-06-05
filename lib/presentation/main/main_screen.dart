import 'package:migr_proj/presentation/main/widgets/attack_list.dart';
import 'package:migr_proj/presentation/main/widgets/charts_panel.dart';
import 'package:migr_proj/presentation/shared/widgets/prefered_size_container.dart';
import 'package:migr_proj/presentation/shared/widgets/search_field/search_sliver_header_delegate.dart';
import 'package:migr_proj/resources/colors/light_colors.dart';
import 'package:migr_proj/src/shared/layouts/main_layout.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout.withFocusLayout(
      child: Container(
        decoration: getContainerDecoration,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: 300.0,
              bottom: PreferedSizeContainer(
                isShadow: true,
                height: 20.0,
                color: LightColors.lightUndercover,
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: ColoredBox(
                  color: LightColors.backgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 20.0,
                    ),
                    child: ChartsPanel(),
                  ),
                ),
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: SearchSliverHeaderDelegate(),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
              sliver: AttackList(),
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration get getContainerDecoration {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: LightColors.panelGradient,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0.4, 0.9],
      ),
    );
  }
}
