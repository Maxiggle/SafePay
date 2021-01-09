import 'package:flutter/material.dart';
import 'package:safepay/HomPage.dart';
import 'package:owesome_validator/owesome_validator.dart';
import 'package:safepay/file.dart';
import 'package:safepay/model.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  Model model = Model();

  @override
  Widget build(BuildContext context) {
    final halfWidth = MediaQuery.of(context).size.width / 2.0;

    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                     decoration: BoxDecoration(borderRadius:BorderRadius.circular(30.0) ),
                    width: halfWidth,
                    child: MyTextFormField(
                      hintText: 'First Name',
                      validator: (String value) {
                        if (!OwesomeValidator.name(
                            value, OwesomeValidator.patternNameOnlyChar)) {
                          return 'First Name field is invalid';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        model.firstName = value;
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius:BorderRadius.circular(30.0) ),
                   
                    width: halfWidth,
                    child: MyTextFormField(
                      hintText: 'Last Name',
                      validator: (String value) {
                        if (!OwesomeValidator.name(
                            value, OwesomeValidator.patternNameOnlyChar)) {
                          return 'Last Name field is invalid';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        model.lastName = value;
                      },
                    ),
                  )
                ],
              ),
            ),
            MyTextFormField(
              hintText: 'Email',
              isEmail: true,
              validator: (String value) {
                if (!OwesomeValidator.email(
                    value, OwesomeValidator.patternEmail)) {
                  return 'Please enter a valid email';
                }
                return null;
              },
              onSaved: (String value) {
                model.email = value;
              },
            ),
           
            MyTextFormField(
              hintText: 'Password',
              isPassword: true,
              validator: (String value) {
                if (!OwesomeValidator.password(value,
                    OwesomeValidator.passwordMinLen8withCamelAndSpecialChar)) {
                  return 'The password must contain letters, \n numbers and special characters and must be \n at least 8 characters and at most 20.';
                }
                _formKey.currentState.save();
                return null;
              },
              onSaved: (String value) {
                model.password = value;
              },
            ),
            MyTextFormField(
              hintText: 'Confirm Password',
              isPassword: true,
              validator: (String value) {
                if (!OwesomeValidator.password(value,
                    OwesomeValidator.passwordMinLen8withCamelAndSpecialChar)) {
                  return 'The password must contain letters, \n numbers and special characters and must be \n at least 8 characters and at most 20.';
                } else if (model.password != null && value != model.password) {
                  print(value);
                  print(model.password);
                  return 'Password not matched';
                }
                return null;
              },
            ),
            RaisedButton(
              color: Colors.blueAccent,
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                }
              },
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 25.0,),
              SignInButton(
            Buttons.Google,
           text: "Sign up with Google",
              onPressed: () {},
              ),
              SignInButton(
                Buttons.Facebook,
                text: 'Sign Up with facebook',
                onPressed: (){},
              )
          ],
        ),
      ),
    );
  }
}
