import 'package:epidhec/Screens/NavBar/components/body.dart';
import 'package:epidhec/components/back_button.dart';
import 'package:epidhec/components/list_tile.dart';
import 'package:flutter/material.dart';
import 'package:avatars/avatars.dart';

class Productpage extends StatelessWidget {
  final int approvisionnement;
  final int fabrication;
  final int emballage;
  final int environnement;
  final String productname;
  final String assetproduct;
  const Productpage({
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
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildTop(),
            Positioned(
              top: 10,
              left: 10,
              child: BackButtonCustom(
                icon: const Icon(Icons.arrow_back_ios_new_outlined),
                press: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const NavBar())
                  );
                },
              ),
            ),
            const SizedBox(height: 90),
            Text(
              productname,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: 'Lobster',
                fontWeight: FontWeight.w500,
                fontSize: 24
              )
            ),
            const SizedBox(height: 40),
            scoreGaspi(),
            const SizedBox(
              height: 30,
            ),
            const Align(
              alignment: Alignment(-0.8, 0.0),
              child: Text(
                "Notation",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.w500),
                textScaleFactor: 2,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TemplateTileList(
                title: "Score Approvisionnement", value: approvisionnement),
            const SizedBox(
              height: 20,
            ),
            TemplateTileList(title: "Score fabrication", value: fabrication),
            const SizedBox(
              height: 20,
            ),
            TemplateTileList(title: "Score Emballage", value: emballage),
            const SizedBox(
              height: 20,
            ),
            TemplateTileList(
                title: "Score coût environnemental-C02", value: environnement),
            const SizedBox(
              height: 50,
            ),
          ]),
    );
  }

  Widget scoreGaspi() =>
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
          child: SizedBox(
              height: 100.0,
              child: Card(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  color: const Color(0xFFD5EDE0),
                  elevation: 5,
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            '${(approvisionnement + fabrication + emballage + environnement) / 4} / 100',
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.5,
                            style: const TextStyle(
                              color: Colors.black,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                      ]))),
        ),
        Expanded(
          child: SizedBox(
              height: 100.0,
              child: Card(
                  margin: const EdgeInsets.only(right: 20),
                  color: const Color(0xFFD5EDE0),
                  elevation: 5,
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.fromLTRB(17, 15, 10, 15),
                          child: buildGaspi(),
                        )
                      ]))),
        ),
      ]);

  Widget buildTop() {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        coverImage(),
        Positioned(
          top: 150 - 75,
          child: profileImage(),
        )
      ],
    );
  }

  Widget buildGaspi() {
    if (((approvisionnement + fabrication + emballage + environnement) / 4) <=
        20) {
      return Expanded(
        child: Image.asset("assets/images/gaspiscorelogo/e.png"),
      );
    } else if (((approvisionnement + fabrication + emballage + environnement) /
            4) <=
        40) {
      return Expanded(
        child: Image.asset("assets/images/gaspiscorelogo/d.png"),
      );
    } else if (((approvisionnement + fabrication + emballage + environnement) /
            4) <=
        60) {
      return Expanded(
        child: Image.asset(
          "assets/images/gaspiscorelogo/c.png",
        ),
      );
    } else if (((approvisionnement + fabrication + emballage + environnement) /
            4) <=
        80) {
      return Expanded(
        child: Image.asset("assets/images/gaspiscorelogo/b.png"),
      );
    } else {
      return Expanded(
        child: Image.asset("assets/images/gaspiscorelogo/a.png"),
      );
    }
  }

  Widget coverImage() => Image.asset("assets/images/header.png");

  Widget profileImage() => Avatar(
        elevation: 5,
        shadowColor: Colors.black,
        sources: [GenericSource(AssetImage(assetproduct))],
        shape: AvatarShape.rectangle(
            170, 170, const BorderRadius.all(Radius.circular(50.0))),
      );
}
