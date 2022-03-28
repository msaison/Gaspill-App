import 'dart:async';
import 'package:epidhec/Screens/Product/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:epidhec/components/rounded_button.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // ignore: unused_field
  String _scanBarcode = 'Unknown';

  @override
  void initState() {
    super.initState();
  }

  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#d5ede0', 'Retour', true, ScanMode.BARCODE);
      // ignore: avoid_print
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
    if (!mounted) return;

    if (barcodeScanRes == "3095758048012") {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => const ProductTorchon())
      );
    } else if (barcodeScanRes == "CodeParmentier") {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => const ProductParmentier())
      );
    } else if (barcodeScanRes == "CodeParmentier") {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => const ProductParmentier())
      );
    }

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        color: Colors.black,
        home: Scaffold(body: Builder(builder: (BuildContext context) {
          return Container(
              alignment: Alignment.center,
              child: Flex(
                  direction: Axis.vertical,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 140,),
                    const Text("Scanne le Code barre sur ton produit Fleury", style: TextStyle(fontFamily: "Lobster", fontSize: 22)),
                    const SizedBox(height: 40,),
                    Container (padding: const EdgeInsets.symmetric(horizontal: 40), child: const Text("Centre bien le Code barre dans le cadre afin que l’appreil puisse le reconnaître et te donner les résultats de son gaspi-score!", style: TextStyle(fontFamily: "Jost", fontSize: 22), textAlign: TextAlign.center)),
                    const SizedBox(height: 50,),
                    const Image(image: AssetImage("assets/images/code.gif")),
                    const SizedBox(height: 20,),
                    RoundedButton(
                      text: "SCANNER",
                      press: () => scanBarcodeNormal(),
                      color: Colors.green.shade800
                    ),
                  ]));
        })));
  }
}
