import 'package:astartapp_web/helpers/local_navigator.dart';
import 'package:astartapp_web/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SideMenu()),
        Expanded(
            flex: 5,
            child: localNavigator()),
      ],
    );
  }
}
