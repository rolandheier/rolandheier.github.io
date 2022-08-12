import 'package:astartapp_web/constants/controllers.dart';
import 'package:astartapp_web/routing/router.dart';
import 'package:flutter/widgets.dart';
import 'package:astartapp_web/routing/routes.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: overviewPageRoute,
  onGenerateRoute: generateRoute,
);