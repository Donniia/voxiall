import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  TextEditingController? textcontroller;
  final FormFieldValidator<String?>? validator;
  final int maxLines;
  final String labelText;
  Widget? suffixicon;
  bool obsecure;


  CustomTextForm(
      {
        this.textcontroller,
        this.suffixicon,
         this.validator,
        this.maxLines = 1,
        this.obsecure = false,
        required this.labelText});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
      child: TextFormField(
        style:const TextStyle(color: Colors.white),
        obscureText: obsecure,
        maxLines: maxLines,
        validator: validator,
        decoration: InputDecoration(
          suffixIcon: suffixicon,
          suffixIconColor: theme.primaryColor,
          label: Text(labelText,style: const TextStyle(
            color: Color(0xff727477)
          ),),
          labelStyle: TextStyle(color: theme.colorScheme.onSecondary),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: theme.colorScheme.onSecondary)),
        ),
      ),
    );
  }
}
