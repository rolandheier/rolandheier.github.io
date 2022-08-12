import 'package:flutter/material.dart';

const int largeScreenSize = 1000;
const int smallScreenSize = 360;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget smallScreen;

  const ResponsiveWidget({Key? key,required this.largeScreen, required this.smallScreen}) : super(key: key);

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < largeScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      double _width = constraints.maxWidth;
      if(_width >= largeScreenSize) {
        return largeScreen;
      }
      else return smallScreen;
    });
  }
}
