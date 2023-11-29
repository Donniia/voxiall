import 'package:flutter/material.dart';
import 'package:voxiall/Modules/HomeLayout/home_layout.dart';
import 'package:voxiall/Modules/Registeration/Sign_Up.dart';
import 'package:voxiall/Modules/widgets/custom_box.dart';
import 'package:voxiall/Modules/widgets/custom_button.dart';
import 'package:voxiall/Modules/widgets/custom_text_field.dart';

class LogIn extends StatefulWidget {
  static const String routename = "login";

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  var formkey = GlobalKey<FormState>();

  bool isvisible = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      decoration:const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: media.height * 0.4,
                ),
              const  Text(
                  "LogIn",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: Colors.white),
                ),
               const SizedBox(
                  height: 30,
                ),
                CustomTextForm(
                    // validator: (value) {
                    //   if (value == null || value.trim().isEmpty) {
                    //     return "You must enter your email address";
                    //   }
                    //   var regex = RegExp('[a-z0-9]+@[a-z]+\.[a-z]{2,3}');
                    //   if (!regex.hasMatch(value)) {
                    //     return "invalid email address";
                    //   }
                    // },
                    labelText: "Email"),
                CustomTextForm(
                    obsecure: !isvisible,
                    suffixicon: GestureDetector(
                      onTap: () {
                        isvisible = !isvisible;
                        setState(() {});
                      },
                      child: isvisible == true
                          ? const Icon(
                              Icons.visibility,
                              color: Color(0xff727477),
                            )
                          :const Icon(
                              Icons.visibility_off,
                              color: Color(0xff727477),
                            ),
                    ),
                    // validator: (value) {
                    //   if (value == null || value.trim().isEmpty) {
                    //     return "You must enter your Password";
                    //   }
                    //   var regex = RegExp('[a-z0-9]+@[a-z]+\.[a-z]{2,3}');
                    //   if (regex.hasMatch(value)) {
                    //     return "invalid Password";
                    //   }
                    // },
                    labelText: "Password"),
                GestureDetector(
                    onTap: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.pushNamed(context, HomeLayout.routeName);
                      }
                    },
                    child: CustomButton(
                      title: "LogIn",
                    )),
             const   SizedBox(
                  height: 20,
                ),
                const Text(
                  "Or continue with",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xff727477), fontSize: 17),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  CustomBox(title: "Google", imgPath: "assets/images/google.png"),
                  CustomBox(title: "Facebook", imgPath: "assets/images/facebook.png")
                ],),
                const   SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, SignUp.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have account?",style: TextStyle(color: Color(0xff727477), fontSize: 17 ),),
                      Text("Create now",style: TextStyle(color: Colors.white,fontSize: 18),),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
