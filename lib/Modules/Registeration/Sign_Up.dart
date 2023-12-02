import 'package:flutter/material.dart';
import 'package:voxiall/Modules/HomeLayout/home_layout.dart';
import 'package:voxiall/Modules/widgets/custom_button.dart';
import 'package:voxiall/Modules/widgets/custom_text_field.dart';
import '../widgets/custom_box.dart';

class SignUp extends StatefulWidget {
  static const String routeName = "signup";

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: media.height * 0.44),
                Text(
                  "Register",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: media.width < 600 ? 24 : 30,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: media.height < 600 ? 16 : 20),
                CustomTextForm(
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "You must enter your full name";
                    }
                  },
                  labelText: "Full Name",
                ),
                CustomTextForm(
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "You must enter your email address";
                    }
                    var regex = RegExp('[a-z0-9]+@[a-z]+.[a-z]{2,3}');
                    if (!regex.hasMatch(value)) {
                      return "invalid email address";
                    }
                  },
                  labelText: "Email",
                ),
                CustomTextForm(
                  obsecure: !isVisible,
                  textcontroller: passController,
                  suffixicon: GestureDetector(
                    onTap: () {
                      isVisible = !isVisible;
                      setState(() {});
                    },
                    child: isVisible == true
                        ? Icon(Icons.visibility, color: Color(0xff727477))
                        : Icon(Icons.visibility_off, color: Color(0xff727477)),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "You must enter your password";
                    }
                  },
                  labelText: "Password",
                ),
                CustomTextForm(
                  obsecure: !isVisible,
                  suffixicon: GestureDetector(
                    onTap: () {
                      isVisible = !isVisible;
                      setState(() {});
                    },
                    child: isVisible == true
                        ? Icon(Icons.visibility, color: Color(0xff727477))
                        : Icon(Icons.visibility_off, color: Color(0xff727477)),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "You must confirm your password";
                    }
                    if (value == passController.text) {
                      return "password doesn't match";
                    }
                  },
                  labelText: "Confirm Password",
                ),
                CustomTextForm(
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "You must enter your phone number";
                    }
                  },
                  labelText: "Phone Number",
                ),
                SizedBox(height: media.height < 600 ? 16 : 20),
                GestureDetector(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, HomeLayout.routeName);
                    }
                  },
                  child: CustomButton(title: "SignUp"),
                ),
                SizedBox(
                  height: media.height < 600 ? 16 : 20,
                ),
                Text(
                  "or continue with",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff727477),
                    fontSize: 17,
                  ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
