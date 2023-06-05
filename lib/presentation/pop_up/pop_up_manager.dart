import 'dart:async';

import 'package:logging/logging.dart';
import 'package:flutter/material.dart';

import 'package:migr_proj/config/modules/injection_config.dart';

import 'package:migr_proj/src/shared/interfaces/i_dialog.dart';

extension PopUpManagerX on BuildContext {
  void showPopUp(IDialog dialog) => findAncestorStateOfType<_PopUpManagerState>()?.show(dialog);
  Future<void> showAsyncPopUp(IDialog dialog) async => await findAncestorStateOfType<_PopUpManagerState>()?.showAsync(dialog);
}

class PopUpManager extends StatefulWidget {
  const PopUpManager({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  static _PopUpManagerState? of(BuildContext context) {
    return context.findAncestorStateOfType<_PopUpManagerState>();
  }

  @override
  _PopUpManagerState createState() => _PopUpManagerState();
}

class _PopUpManagerState extends State<PopUpManager> {
  final Logger _logger = Logger('[PopUpManager]');
  late final StreamSubscription _subscription;
  late final StreamController<IDialog> _controller;

  @override
  void initState() {
    super.initState();
    _controller = StreamController();

    _subscription = _controller.stream.asyncExpand((dialog) async* {
      _logger.info('Show new dialog $dialog');
      await dialog.show(_display);
      yield dialog;
    }).listen((event) {
      _logger.info('Dialog was done $event');
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    _controller.close();
    super.dispose();
  }

  void show(IDialog dialog) => _controller.add(dialog);

  Future<void> showAsync(IDialog dialog) => dialog.show(_display);

  @override
  Widget build(BuildContext context) => widget.child;

  FutureOr<void> _display(BuilderFunction builder) async {
    final BuildContext? ctx = getIt<AppRouter>().navigatorKey.currentState?.context;

    if (ctx == null) return;

    await builder(ctx);
  }
}
