import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final FormFieldValidator<String>? validator;
  const LoginTextField({super.key,required this.controller,required this.hintText,this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value){
       if(validator != null) return validator!(value);
      },
      controller: controller,
    decoration: InputDecoration(
          hintText: "Add your username",
          hintStyle:ThemeTextStyle.loginTextFieldStyle,
          border: OutlineInputBorder()
      ),
    );
  }
}
