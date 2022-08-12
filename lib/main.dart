import 'package:astartapp_web/controllers/menu_controller.dart';
import 'package:astartapp_web/controllers/navigation_controller.dart';
import 'package:astartapp_web/layout.dart';
import 'package:astartapp_web/pages/authentication/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';
import 'package:astartapp_web/provider/google_sign_in.dart';

void main() async{
  Get.put(MenuController());
  Get.put(NavigationController());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
  create: (context) => GoogleSignInProvider(),
    child: GetMaterialApp(
      home: AuthPage(),
      debugShowCheckedModeBanner: false,
      title: "Dashboard",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme
        ).apply(
          bodyColor: Colors.black
        ),
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
        }),
        primaryColor: Colors.blue,
      ),
      //home: AuthPage(),
    )
  );
}
