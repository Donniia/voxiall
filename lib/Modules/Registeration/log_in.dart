import 'package:flutter/material.dart';
import 'package:voxiall/Modules/HomeLayout/home_layout.dart';
import 'package:voxiall/Modules/Registeration/Sign_Up.dart';
import 'package:voxiall/Modules/widgets/custom_box.dart';
import 'package:voxiall/Modules/widgets/custom_button.dart';
import 'package:voxiall/Modules/widgets/custom_text_field.dart';

class LogIn extends StatefulWidget {
  static const String routename = "login";

  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  var formkey = GlobalKey<FormState>();

  bool isvisible = false;


  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
            decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage("assets/images/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: media.height * 0.4,
                  ),
                  Text(
                    "LogIn",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: media.width < 600 ? 24 : 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: media.height < 600 ? 20 : 30,
                  ),
                  CustomTextForm(
                    labelText: "Email",
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "You must enter your email address";
                      }
                      var regex = RegExp('[a-z0-9]+@[a-z]+.[a-z]{2,3}');
                      if (!regex.hasMatch(value)) {
                        return "invalid email address";
                      }
                      return null;
                    },
                  ),
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
                          : const Icon(
                        Icons.visibility_off,
                        color: Color(0xff727477),
                      ),
                    ),
                    labelText: "Password",
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "You must enter your password";
                      }
                      if(value.length < 8){
                        return "password must be at least 8 characters";
                      }
                      return null;
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.pushNamed(context, HomeLayout.routeName);
                      }
                    },
                    child: CustomButton(
                      title: "LogIn",
                    ),
                  ),
                  SizedBox(
                    height: media.height < 600 ? 10 : 20,
                  ),
                  const Text(
                    "Or continue with",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xff727477), fontSize: 17),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomBox(
                        title: "Google",
                        imgPath: "assets/images/google.png",
                      ),
                      CustomBox(
                        title: "Facebook",
                        imgPath: "assets/images/facebook.png",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: media.height < 600 ? 10 : 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, SignUp.routeName);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: const Color(0xff727477),
                            fontSize: media.width < 600 ? 14 : 17,
                          ),
                        ),
                        Text(
                          " Create now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: media.width < 600 ? 16 : 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}
