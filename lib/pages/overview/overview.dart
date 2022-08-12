import 'package:astartapp_web/pages/overview/Widgets/overview_table.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_text.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OverviewTable(),
    );
  }
}
