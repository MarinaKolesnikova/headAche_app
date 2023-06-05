import 'package:flutter/material.dart';

import 'package:migr_proj/resources/resources.dart';

class ListHeader extends StatelessWidget {
  const ListHeader({
    required this.headerLabel,
    required this.isExpand,
    Key? key,
  }) : super(key: key);
  final String headerLabel;
  final bool isExpand;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 4.0,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      decoration: getDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            headerLabel,
            style: LightTextStyles.poppinsS18W500(color: LightColors.text.withOpacity(1.0)),
          ),
          Icon(
            !isExpand ? Icons.arrow_drop_down : Icons.arrow_drop_up,
            color: LightColors.text,
          ),
        ],
      ),
    );
  }

  BoxDecoration getDecoration() {
    return BoxDecoration(
      color: LightColors.lightUndercover,
      border: Border(
        bottom: BorderSide(color: LightColors.text.withOpacity(0.3)),
      ),
    );
  }
}
