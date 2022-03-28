import 'package:epidhec/components/productpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final int approvisionnement;
  final int fabrication;
  final int emballage;
  final int environnement;
  final String productname;
  final String assetproduct;
  const Body({
    Key? key,
    required this.approvisionnement,
    required this.fabrication,
    required this.emballage,
    required this.environnement,
    required this.productname,
    required this.assetproduct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Productpage(
      approvisionnement: approvisionnement,
      fabrication: fabrication,
      emballage: emballage,
      environnement: environnement,
      productname: productname,
      assetproduct: assetproduct,
    );
  }
}
