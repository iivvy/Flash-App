import 'package:chat_app/components/rounded_button.dart';
import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration:kInputDecoration.copyWith(hintText: 'Enter your email ')
              // const InputDecoration(
              //   hintText: 'Enter your email',
              //   contentPadding:
              //       EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              //   border: OutlineInputBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(32.0)),
              //   ),
              //   enabledBorder: OutlineInputBorder(
              //     borderSide:
              //         BorderSide(color: Colors.lightBlueAccent, width: 1.0),
              //     borderRadius: BorderRadius.all(Radius.circular(32.0)),
              //   ),
              //   focusedBorder: OutlineInputBorder(
              //     borderSide:
              //         BorderSide(color: Colors.lightBlueAccent, width: 2.0),
              //     borderRadius: BorderRadius.all(Radius.circular(32.0)),
              //   ),
              // ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kInputDecoration.copyWith(hintText: 'Enter your password')
            ),
            const SizedBox(
              height: 24.0,
            ),
            const RoundedButton(
                color: Colors.lightBlueAccent, name: 'Log In', route: ''),
          ],
        ),
      ),
    );
  }
}
