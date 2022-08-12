import 'package:astartapp_web/constants/style.dart';
import 'package:astartapp_web/helpers/responsiveness.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

User user = FirebaseAuth.instance.currentUser!;
String userName = user.displayName ?? "Teszt Név";
ImageProvider userImage = NetworkImage(user.photoURL!);

void userSetup() {
  if (FirebaseAuth.instance.currentUser != null) {
    final inuser = FirebaseAuth.instance.currentUser!;
    userName = inuser.displayName!;
    userImage = NetworkImage(inuser.photoURL!);
  }
}

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key ) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context) ?


      Row(
        children: [
          Container(
                padding: const EdgeInsets.only(left: 14),
                child: Image.asset("assets/icons/logo.png", width: 28),
              ),
        ],
      ) : IconButton(icon: Icon(Icons.menu), onPressed: (){
         key.currentState?.openDrawer();
      },),
      elevation: 0,
      title: Row(
        children: [
          Visibility(child: CustomText(text: "Dashboard", color: lightGrey, size: 20, weight: FontWeight.bold)),
          Expanded(child: Container()),
          IconButton(icon: Icon(
            Icons.settings,
            color: dark.withOpacity(.7),
          ),
            onPressed: (){},
          ),

          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.notifications, color: dark.withOpacity(.7)),
                onPressed: (){}),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: light, width: 2)
                  ),
                )),
            ],
          ),

          Container(
            width: 1,
            height: 22,
            color: lightGrey
          ),

          SizedBox(
            width: 24,
          ),
          CustomText(text: userName, size: 15, color: lightGrey, weight: FontWeight.normal),

          SizedBox(
            width: 16,
          ),

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)),
            child: Container(
                padding: EdgeInsets.all(2),
                margin: EdgeInsets.all(2),
                child: CircleAvatar(
                  backgroundColor: light,
                  backgroundImage: userImage,
                )
              )
            ),
        ],
      ),
      iconTheme: IconThemeData(color: dark),
      backgroundColor: light,
);