import 'package:astartapp_web/pages/projects/widgets/projects_table.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_text.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: ProjectsTable(),
    );
  }
}
