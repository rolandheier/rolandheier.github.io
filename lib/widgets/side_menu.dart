import 'package:astartapp_web/constants/controllers.dart';
import 'package:astartapp_web/helpers/responsiveness.dart';
import 'package:astartapp_web/pages/authentication/auth.dart';
import 'package:astartapp_web/provider/google_sign_in.dart';
import 'package:astartapp_web/routing/routes.dart';
import 'package:astartapp_web/widgets/custom_text.dart';
import 'package:astartapp_web/widgets/side_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../constants/style.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(children: [
        if(ResponsiveWidget.isSmallScreen(context))
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 40,),
              Row(
                children: [
                  SizedBox(width: _width / 48),
                  Padding(padding: EdgeInsets.only(right: 12),
                    child: Image.asset("assets/icons/logo.png", width: 20,)
                  ),
                  Flexible(child: CustomText(
                    text: "Dashboard",
                    size: 20,
                    weight: FontWeight.bold,
                    color: active,
                  )),

                  SizedBox(width: _width / 48),
                ],
              ),


            ],
          ),
        SizedBox(height: 40,),
        Divider(color: lightGrey.withOpacity(.1),),

        Column(
          mainAxisSize: MainAxisSize.min,
          children: sideMenuItems.map((itemName) => SideMenuItem(
            itemName: itemName == authPageRoute ? "Log Out" : itemName,
            onTap: () async {
              if(itemName == authPageRoute){
                //Get.offAll(() => AuthPage());
                final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                await provider.logout();
                Get.offAll(() => AuthPage());
              }

              if(!menuController.isActive(itemName)){
                menuController.changeActiveItemTo(itemName);
                if(ResponsiveWidget.isSmallScreen(context))
                  Get.back();
                  navigationController.navigateTo(itemName);
              }
            },
          )).toList(),
        )
      ],),
    );
  }
}
