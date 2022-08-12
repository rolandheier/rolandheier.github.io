import 'package:astartapp_web/helpers/responsiveness.dart';
import 'package:astartapp_web/widgets/vertical_menu_item.dart';
import 'package:flutter/material.dart';

import 'horizontal_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;
  const SideMenuItem({Key? key, required this.itemName, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(ResponsiveWidget.isSmallScreen(context))
      return VerticalMenuItem(itemName: itemName, onTap: onTap,);

    return HorizontalMenuItem(itemName: itemName, onTap: onTap,);
  }
}
