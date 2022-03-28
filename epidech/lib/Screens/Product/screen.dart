import 'package:flutter/material.dart';
import 'package:epidhec/Screens/Product/components/body.dart';

class ProductBaton extends StatelessWidget {
  const ProductBaton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(
        approvisionnement: 40,
        fabrication: 90,
        emballage: 20,
        environnement: 17,
        productname: "Le bâtonnet moelleux",
        assetproduct: "assets/images/imagesproduit/baton_moelleu.png",
      ),
    );
  }
}

class ProductParmentier extends StatelessWidget {
  const ProductParmentier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(
        approvisionnement: 50,
        fabrication: 80,
        emballage: 70,
        environnement: 100,
        productname: "Parmentier de boeuf",
        assetproduct: "assets/images/imagesproduit/parmentier.png",
      ),
    );
  }
}

class ProductTorchon extends StatelessWidget {
  const ProductTorchon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(
        approvisionnement: 50,
        fabrication: 90,
        emballage: 20,
        environnement: 8,
        productname: "Jambon le torchon",
        assetproduct: "assets/images/imagesproduit/torchon.jpeg",
      ),
    );
  }
}
