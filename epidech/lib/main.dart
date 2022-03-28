import 'package:epidhec/Screens/NavBar/screen.dart';
import 'package:flutter/material.dart';
import 'package:epidhec/constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gaspi''App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/profile',
      routes: {
        '/profile': (context) => const NavBarW(),
      },
    );
  }
}
