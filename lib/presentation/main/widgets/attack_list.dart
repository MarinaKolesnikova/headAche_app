import 'package:migr_proj/presentation/main/widgets/attack_item.dart';
import 'package:migr_proj/src/attack/entities/attack_model/attack_model.dart';
import 'package:flutter/material.dart';

class AttackList extends StatelessWidget {
  const AttackList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final attackList = [
      AttackModel.mock(),
      AttackModel.mock(),
      AttackModel.mock(),
    ];
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => AttackItem(model: attackList[index]),
        childCount: attackList.length,
      ),
    );
  }
}
