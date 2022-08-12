import 'package:flutter/material.dart';
import '../../widgets/custom_text.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CustomText(text: "Users", weight: FontWeight.normal, size: 16, color: Colors.black),
    );
  }
}
