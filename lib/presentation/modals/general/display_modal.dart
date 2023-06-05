import 'package:flutter/material.dart';
import 'package:migr_proj/presentation/modals/modal_header.dart';
import 'package:migr_proj/presentation/modals/modal_layout.dart';

class DisplayModal extends StatefulWidget {
  const DisplayModal({
    required this.child,
    required this.onDecline,
    this.titleWidget,
    this.backgroundColor,
    this.hasBackButton = true,
    Key? key,
  }) : super(key: key);
  final Widget child;
  final Widget? titleWidget;
  final Color? backgroundColor;
  final bool hasBackButton;

  final VoidCallback onDecline;

  @override
  _DisplayModalState createState() => _DisplayModalState();
}

class _DisplayModalState extends State<DisplayModal> {
  @override
  Widget build(BuildContext context) {
    return ModalLayout.withFocusLayout(
      backgroundColor: widget.backgroundColor,
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, top: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: widget.child,
                  ),
                ),
              ],
            ),
          ),
          GeneralModalHeader(
            titleWidget: widget.titleWidget,
            hasBackButton: widget.hasBackButton,
            backgroundColor: widget.backgroundColor,
          ),
        ],
      ),
    );
  }
}
