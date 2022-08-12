import 'package:astartapp_web/pages/authentication/auth.dart';
import 'package:astartapp_web/pages/overview/overview.dart';
import 'package:astartapp_web/pages/projects/projects.dart';
import 'package:astartapp_web/pages/users/users.dart';
import 'package:astartapp_web/routing/routes.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case overviewPageRoute:
      return _getPageRoute(OverViewPage());
    case usersPageRoute:
      return _getPageRoute(UsersPage());
    case projectsPageRoute:
      return _getPageRoute(ProjectsPage());
    default:
      return _getPageRoute(OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}