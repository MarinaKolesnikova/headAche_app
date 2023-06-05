import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:migr_proj/src/main/domain/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:migr_proj/presentation/shared/widgets/non_animated_inkwell.dart/non_animated_inkwell.dart';
import 'package:migr_proj/resources/resources.dart';

class GeneralModalHeader extends StatelessWidget {
  const GeneralModalHeader({
    this.onDecline,
    this.titleWidget,
    this.onSubmit,
    this.isLoading = false,
    this.hasBackButton = true,
    this.backgroundColor,
    Key? key,
  }) : super(key: key);

  final bool isLoading;
  final bool hasBackButton;

  final Widget? titleWidget;
  final VoidCallback? onSubmit;
  final VoidCallback? onDecline;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 10.0,
          ),
          child: Container(
            color: backgroundColor ?? LightColors.backgroundColor,
            height: 30.0,
            child: Row(
              children: [
                if (hasBackButton)
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: NonAnimatedInkWell(
                      onTap: () {
                        context.popRoute();
                        onDecline?.call();
                      },
                      child: SvgPicture.asset(
                        SvgPathPicker.back,
                        height: 30.0,
                        color: LightColors.text,
                      ),
                    ),
                  ),
                titleWidget ?? SizedBox.shrink(),
              ],
            ),
          ),
        );
      },
    );
  }
}
