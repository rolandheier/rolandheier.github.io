import 'package:astartapp_web/constants/style.dart';
import 'package:astartapp_web/layout.dart';
import 'package:astartapp_web/provider/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../widgets/custom_text.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
    child: Scaffold(
      body: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 400),
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(right: 12),
                    child: Image.asset("assets/icons/logo.png", height: 100,),),
                    Expanded(child: Container())
                  ],
                ),

                SizedBox(
                  height: 30
                ),

                Row(
                  children: [
                    Text("Login", style:GoogleFonts.roboto(fontSize: 30, fontWeight: FontWeight.bold)),

                  ],
                ),

                Row(
                  children: [
                    CustomText(text: "Welcome on the admin panel", size: 20, color: lightGrey, weight: FontWeight.normal),
                  ],
                ),

                SizedBox(height: 15,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "example@domain.com",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ),

                SizedBox(height: 15,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "**********",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ),

                SizedBox(height: 15,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value){}),
                        CustomText(text: "Remember Me", size: 12, color: lightGrey, weight: FontWeight.normal),
                      ],
                    ),

                    CustomText(text: "Forgot Password", size: 14, color: active, weight: FontWeight.normal),
                  ],
                ),

                SizedBox(height: 15,),

                InkWell(
                  onTap: (){
                    //Get.offAll(() => SiteLayout());
                  },
                  child: Container(

                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),),
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: CustomText(text: "Login", size: 12, color: Colors.white, weight: FontWeight.normal),
                  ),
                ),

                SizedBox(height: 15,),

                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    minimumSize: Size(double.infinity, 50),
                  ),
                    icon: FaIcon(FontAwesomeIcons.google, color: Colors.red,),
                    label: Text("Sign in with Google!"),
                  onPressed: () async {
                    final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                    await provider.googleLogin();

                    Get.offAll(() => SiteLayout());
                  },
                ),
                SizedBox(height: 15),

                RichText(text: TextSpan(
                  children: [
                    TextSpan(text: "Register", style: TextStyle(color: active))
                  ],
                )),

      ],
            )
          ),
      ),
    ),
  );
}
