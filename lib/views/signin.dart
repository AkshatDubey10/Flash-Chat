import 'package:chat_app/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: Column(
        children: [
          Flexible(
            child: Container(
              child: Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      style: simpleTextStyle(),
                      decoration: textFieldInputDecoration('Email'),
                    ),
                    TextField(
                      style: simpleTextStyle(),
                      decoration: textFieldInputDecoration('Password'),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: Text(
                          'Forget Password',
                          style: simpleTextStyle(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(colors: [
                            const Color(0xff007EF4),
                            const Color(0xff2A75BC),
                          ])),
                      child: Text(
                        'Sign In',
                        style: mediumTextStyle(),
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white,
                      ),
                      child: Text(
                        'Sign In with Google',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account? ',
                          style: mediumTextStyle(),
                        ),
                        Text(
                          'Register Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            decoration: TextDecoration.underline,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50.0,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
