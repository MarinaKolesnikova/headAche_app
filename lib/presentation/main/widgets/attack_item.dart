import 'package:migr_proj/presentation/shared/widgets/custom_clipper/attack_clipper.dart';
import 'package:migr_proj/presentation/shared/widgets/mig_icon/mig_icon.dart';
import 'package:migr_proj/presentation/shared/widgets/wrap_chip/wrap_chips.dart';

import 'package:migr_proj/resources/resources.dart';
import 'package:migr_proj/src/attack/entities/attack_model/attack_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AttackItem extends StatelessWidget {
  const AttackItem({required this.model, Key? key}) : super(key: key);
  final AttackModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 4.0),
      height: 140.0,
      decoration: getDecoration(),
      child: Stack(
        children: [
          ClipPath(
            clipper: AttackClipper(),
            child: Container(
              padding: const EdgeInsets.only(
                left: 12.0,
                right: 12.0,
                top: 8.0,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        getDate,
                        style: LightTextStyles.poppinsS12W400(color: LightColors.text),
                      ),
                      Text(
                        getDuration,
                        style: LightTextStyles.poppinsS12W400(color: LightColors.text),
                      ),
                      MigIcon(
                        svgPath: SvgPathPicker.delete,
                        size: 25.0,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      model.description +
                          ' New attack',
                      style: LightTextStyles.poppinsS12W400(
                        color: LightColors.text.withOpacity(0.75),
                      ),
                    ),
                  ),
                  if (model.symptoms != null)
                    WrapChips(
                      symptoms: model.symptoms!,
                      label: 'Symptoms',
                    ),
                  if (model.treatment != null)
                    WrapChips(
                      symptoms: model.treatment!,
                      label: 'Treatment',
                    ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: 140.0,
            decoration: getInnerDecoration(),
          ),
        ],
      ),
    );
  }

  String get getDate {
    final DateFormat formatter = DateFormat('dd-MM-yyyy  HH:mm');
    return formatter.format(model.date);
  }

  String get getDuration {
    String duration = model.duration.toString().split(':').first + 'h ';
    final String min = model.duration.toString().split(':').elementAt(1);
    if (min != '00') {
      duration = duration + min + 'm';
    }

    return duration;
  }

  BoxDecoration getDecoration() {
    return BoxDecoration(
      color: LightColors.mainItemsColor,
      borderRadius: BorderRadius.circular(30.0),
      boxShadow: [
        BoxShadow(
          color: LightColors.shadowColor,
          blurRadius: 10.0,
          spreadRadius: 5.0,
        ),
      ],
    );
  }

  BoxDecoration getInnerDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.transparent,
          LightColors.shadowColor.withOpacity(0.07),
          LightColors.shadowColor.withOpacity(0.2),
          LightColors.shadowColor.withOpacity(0.4),
          LightColors.shadowColor.withOpacity(0.7),
        ],
        stops: [
          0.65,
          0.75,
          0.8,
          0.85,
          0.95,
        ],
      ),
    );
  }
}
