import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  final bool isPassword;
  final bool isEmail;
  final bool isPhone;

  MyTextFormField(
      {this.hintText,
      this.validator,
      this.onSaved,
      this.isPassword = false,
      this.isEmail = false,
      this.isPhone = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: hintText,
         
        ),
        obscureText: isPassword ? true : false,
        validator: validator,
        onSaved: onSaved,
        keyboardType: isEmail
            ? TextInputType.emailAddress
            : isPhone
                ? TextInputType.phone
                : TextInputType.text,
      ),
    );
  }
}