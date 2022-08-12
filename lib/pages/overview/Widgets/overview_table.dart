import 'package:flutter/material.dart';

class OverviewTable extends StatelessWidget {
  const OverviewTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        buildRow(["első", "második", "harmadik"]),
      ],
    );
  }

  TableRow buildRow(List<String> cells) => TableRow(
    children: cells.map((cell) => Text(cell)).toList(),
  );
}
