import 'package:epidhec/components/list_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<String> listAntigaspi = [
  'assets/images/gaspi0.png | Récupère tes épluchures de légumes, met les au congléateur, et lorsqu’il y en a une quantité suffisante tu pourras préparer un bouillon de légumes… Miam !',
  'assets/images/gaspi1.png | Légumes défraichis ? Plonge les dans de l’eau glacée pendant 10 minutes et hop ! Comme neufs… !',
  'assets/images/gaspi2.png | Préparez vos crudités à l’avance ! Coupez vos légumes et conservez les au frigo dans des bocaux pour une durée de vie plus longue !',
];

final List<String> listNews = [
  'Fleury Michon investit 120 millions d’euros pour aller vers le drive et le recyclable… Voir plus',
  'Afin de proposer encore plus d’alternatives Fleury Michon propose un emballage en verre en collaboration avec Verallia, entreprise française spécialisée dans l’emballage pour les boissons et les produits alimentaires… Voir plus',
];

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Image(
            image: AssetImage('assets/images/bienvenue_header.png'),
          ),
          Card(
            color: const Color(0xFFCBE8D8),
            elevation: 5,
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.all(30.0),
            child:
                Column(mainAxisSize: MainAxisSize.min, children: const <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                "Au programme",
                style: TextStyle(color: Colors.black, fontFamily: 'Lobster'),
                textScaleFactor: 1.5,
              ),
              SizedBox(height: 5),
              ListTile(
                leading: Icon(
                  Icons.lightbulb_outline_sharp,
                  color: Color(0xFF005126),
                ),
                subtitle: Text(
                  'Découvre nos conseils anti-gaspi, les actualités Fleury Michon, des recettes à préparer à partir de nos produits et bien plus encore.',
                  style: TextStyle(fontFamily: "Jost", fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.adjust_sharp,
                  color: Color(0xFF005126),
                ),
                subtitle: Text(
                  'N’oublie pas de remplir tes objectifs du mois afin de bénéficier de tes avantages jeune novice !',
                  style: TextStyle(fontFamily: "Jost", fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ]),
          ),
          const SizedBox(height: 25),
          const Align(
            alignment: Alignment(-0.8, 0.0),
            child: Text(
              "Conseils Anti-gaspi",
              style: TextStyle(
                color: Color(0xFF005126),
              ),
              textScaleFactor: 1.4,
            ),
          ),
          const SizedBox(height: 15),
          Carouselslide(
              colors: const Color(0xFFD5EFF1),
              duree: const Duration(seconds: 7),
              list: listAntigaspi),
          const SizedBox(
            height: 15,
          ),
          const Align(
            alignment: Alignment(-0.8, 0.0),
            child: Text(
              "Les News Fleury Michon",
              style: TextStyle(
                color: Color(0xFF005126),
              ),
              textScaleFactor: 1.4,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Carouselslidewithoutimage(
              colors: const Color(0xFFD5EDE0),
              duree: const Duration(seconds: 5),
              list: listNews),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
