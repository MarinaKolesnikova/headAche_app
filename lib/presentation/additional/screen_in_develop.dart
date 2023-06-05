import 'package:flutter/material.dart';

import 'package:migr_proj/presentation/shared/mixins/logout.dart';
import 'package:migr_proj/presentation/shared/widgets/buttons/outlined_button.dart/light_outlined_button.dart';
import 'package:migr_proj/resources/resources.dart';
import 'package:migr_proj/src/shared/layouts/main_layout.dart';

class ScreenInDevelop extends StatefulWidget {
  const ScreenInDevelop({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<ScreenInDevelop> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Screen in develop',
              style: LightTextStyles.poppinsS16W400(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: LightOutlineButton(
              color: Colors.black,
              text: 'Exit',
              onTap: () => Logout.logoutAction(context),
            ),
          ),
        ],
      ),
    );
  }
}
