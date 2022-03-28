import 'package:flutter/material.dart';
import 'package:epidhec/components/rounded_button.dart';
import 'package:epidhec/constants.dart';
import 'package:epidhec/Screens/Login/login_screen.dart';
import 'package:epidhec/Screens/Signup/screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // size screen
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Image(image: AssetImage('assets/images/logo_fleury_ban.png')),
          SizedBox(height: size.height * 0.2),
          const Image(
            image: AssetImage("assets/images/Gaspiscore_noir.png"),
          ),
          const Text(
            "A PROJECT WITH EDHEC AND EPITECH STUDENT",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          RoundedButton(
            text: "LOGIN",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginScreen();
                  },
                ),
              );
            },
            color: kPrimaryColor,
          ),
          RoundedButton(
            text: "REGISTER",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SignUpScreen();
                  },
                ),
              );
            },
            color: kPrimaryColor,
          ),
          SizedBox(height: size.height * 0.25),
          // const Text(
          //   'POWERED BY',
          //   style: TextStyle(
          //     fontFamily: 'Avenir',
          //   ),
          // ),
        ],
      ),
    );
  }
}
