import 'package:flutter/material.dart';
import 'package:epidhec/constants.dart';

class BackButtonCustom extends StatelessWidget {
  final Icon icon;
  final Function()? press;
  final Color color;
  const BackButtonCustom({
    Key? key,
    required this.icon,
    required this.press,
    this.color = kPrimaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(-0.95, 0.0),
      child: IconButton(onPressed: press, icon: icon),
    );
  }
}
