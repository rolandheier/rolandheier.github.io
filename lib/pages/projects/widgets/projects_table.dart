import 'package:astartapp_web/constants/style.dart';
import 'package:astartapp_web/pages/projects/widgets/new_project_dialog.dart';
import 'package:astartapp_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectsTable extends StatelessWidget {
  const ProjectsTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              CustomText(text: "Projects", weight: FontWeight.normal, size: 24, color: Colors.black),

              SizedBox(width: 15,),

              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                ),
                icon: FaIcon(FontAwesomeIcons.plusCircle, color: Colors.blue,),
                label: Text("New Project"),
                onPressed: (){
                  showDialog(
                      context: context,
                      builder: (context) => NewProject(),
                  );
                },
              ),
            ],
          ),

          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black38,
                  width: 1
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),

          Table(
            border: TableBorder.symmetric(
                inside: BorderSide.none,
                outside: BorderSide.none
            ),
            children: [
              buildRow(["Name", "Location", "Users", "Description", "Active"], isHeader: true),
              buildRow(["Name", "Location", "Users", "Description", "Active"]),
              buildRow(["Name", "Location", "Users", "Description", "Active"]),
            ],
          ),
        ],

      ),
    );
  }

  TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
    children: cells.map((cell) {
      final style = TextStyle(
        fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
        fontSize: isHeader ? 20 : 16,
      );

      return Padding(
        padding: EdgeInsets.all(10),
        child: Center(child: Text(cell, style: style,),),
      );
    }).toList(),
  );
}
