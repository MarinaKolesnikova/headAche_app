import 'package:migr_proj/src/main/domain/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:migr_proj/presentation/modals/general/display_modal.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class NewsModals {
  static Future<void> showChart({
    required BuildContext context,
    Widget? titleWidget,
  }) async {
    await showNewsModal(
      context: context,
      child: DisplayModal(
        titleWidget: titleWidget,
        onDecline: context.popRoute,
        //TOdo(Mar): add model here
        child: SizedBox.shrink(),
      ),
    );
  }

  static Future<void> showNewsModal({
    required BuildContext context,
    required Widget child,
  }) async {
    final height = MediaQuery.of(context).size.height;
    await showMaterialModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      context: context,
      animationCurve: Curves.easeInOut,
      builder: (BuildContext ctx) {
        return BlocBuilder<AppBloc, AppState>(
          builder: (context, state) => SizedBox(
            height: height * 0.9,
            child: child,
          ),
        );
      },
    );
  }
}
