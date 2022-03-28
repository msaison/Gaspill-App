import 'package:epidhec/Screens/Login/login_screen.dart';
import 'package:epidhec/components/back_button.dart';
import 'package:flutter/material.dart';
import 'package:epidhec/components/already_have_an_account_acheck.dart';
import 'package:epidhec/components/rounded_button.dart';
import 'package:epidhec/components/rounded_input_field.dart';
import 'package:epidhec/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: size.height * 0.10),
          BackButtonCustom(
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
            press: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          const Align(
            alignment: Alignment(-0.85, 0.0),
            child: Text(
              "Register",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
                fontFamily: 'Avenir',
              ),
            ),
          ),
          SizedBox(height: size.height * 0.03),
          const Align(
            alignment: Alignment(-0.85, 0.0),
            child: Text(
              "Email",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                fontFamily: 'Avenir',
              ),
            ),
          ),
          RoundedInputField(
            hintText: "jane@example.com",
            onChanged: (value) {},
          ),
          const Align(
            alignment: Alignment(-0.85, 0.0),
            child: Text(
              "Mot de passe",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                fontFamily: 'Avenir',
              ),
            ),
          ),
          RoundedPasswordField(
            hintText: '••••••••••',
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "NEXT",
            press: () {},
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
            login: false,
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
          ),
        ],
      ),
    );
  }
}
