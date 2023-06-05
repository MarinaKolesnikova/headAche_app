import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:migr_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';

import 'package:migr_proj/resources/resources.dart';

import 'package:migr_proj/src/main/domain/bloc/app_bloc.dart';

class LightAppBar extends StatelessWidget implements PreferredSizeWidget {
  LightAppBar({
    this.label,
    this.bottom,
    this.height = 90.0,
    this.hasBackButton = false,
    this.onBackTap,
    this.rightSideWidget,
    this.leftPadding = 0.0,
    this.showNoConnection = true,
    Key? key,
  })  : preferredSize = Size.fromHeight(height),
        super(key: key);
  final String? label;
  final bool hasBackButton;
  final bool showNoConnection;
  final PreferredSizeWidget? bottom;
  final VoidCallback? onBackTap;
  final Widget? rightSideWidget;
  final double leftPadding;

  @override
  final Size preferredSize;
  final double height;

  @override
  Widget build(BuildContext context) {
    Widget appBar = getAppbar(context);
    if (bottom != null) {
      appBar = ColoredBox(
        color: LightColors.accentColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: heightCalc),
                child: appBar,
              ),
            ),
            Align(alignment: Alignment.bottomLeft, child: bottom!)
          ],
        ),
      );
    }
    return appBar;
  }

  Widget getAppbar(BuildContext context) {
    late final EdgeInsets padding = MediaQuery.of(context).padding;

    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              color: LightColors.accentColor,
              padding: const EdgeInsets.symmetric(horizontal: 18.0).add(padding),
              height: height,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (hasBackButton) backIcon(context),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: hasBackButton && !hasRightWidget ? 10.0 : 0.0, left: leftPadding),
                      child: Text(
                        label ?? '',
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: LightTextStyles.poppinsW400(
                          color: LightColors.white,
                          fontSize: 16.0,
                          height: 1.6,
                          letterSpacing: 0.8,
                        ),
                      ),
                    ),
                  ),
                  if (hasRightWidget) rightSideWidget!,
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget backIcon(BuildContext context) {
    return NonAnimatedInkWell(
      onTap: () {
        if (onBackTap != null) {
          onBackTap!.call();
        } else {
          context.popRoute();
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0).add(EdgeInsets.only(right: 10.0)),
        child: SvgPicture.asset(SvgPathPicker.back),
      ),
    );
  }

  double get heightCalc {
    if (bottom != null) return bottom!.preferredSize.height + height;
    return height;
  }

  bool get hasRightWidget => rightSideWidget != null;
}
