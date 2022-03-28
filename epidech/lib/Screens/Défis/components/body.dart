import 'package:epidhec/components/list_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:avatars/avatars.dart';

final List<String> list0 = [
  'assets/images/coeur-frais.png | Bénéficiez de 15 centimes de remise sur les surimi le cœur frais de chèvre ! , 450 gaspi-points',
  'assets/images/aigullette.png | Bénéficiez de 10 centimes de remises sur nos aiguillettes tranchées de poulet. , 300 gaspi-points',
];

final List<String> list1 = [
  'assets/images/saint-jacques.png | Bénéficiez de 10 centimes de réduction sur les noix de Saint-Jacques ! , 300 gaspi points',
  'assets/images/tranche-fin.png | Bénéficiez de 5 centimes de réduction sur notre jambon tranché fin à l’italienne. , 150 gaspi-points',
];

final List<String> list2 = [
  'assets/images/saint-jacques.png | Bénéficiez de 10 centimes de réduction sur les noix de Saint-Jacques ! , 300 gaspi points',
  'assets/images/tranche-fin.png | Bénéficiez de 5 centimes de réduction sur notre jambon tranché fin à l’italienne. , 150 gaspi-points',
  'assets/images/coeur-frais.png | Bénéficiez de 15 centimes de remise sur les surimi le cœur frais de chèvre ! , 450 gaspi-points',
  'assets/images/aigullette.png | Bénéficiez de 10 centimes de remises sur nos aiguillettes tranchées de poulet. , 300 gaspi-points',
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
            image: AssetImage('assets/images/avantages_header.png'),
          ),
          const SizedBox(height: 20),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Avatar(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  elevation: 5,
                  shadowColor: Colors.black,
                  sources: [
                    GenericSource(
                      const AssetImage("assets/images/profile_picture.jpg"),
                    )
                  ],
                  shape: AvatarShape.rectangle(
                      100, 100, const BorderRadius.all(Radius.circular(20.0))),
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
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Container (
                          padding: const EdgeInsets.all(15),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const <Widget>[
                                 Expanded(
                                    child: Text(
                                      "Tu n’as pas encore de point gaspi! Rempli tes missions pour bénéficier de nos cadeaux Apprenti fleury!",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontFamily: "Jost", fontWeight: FontWeight.w500, fontSize: 12, color: Colors.black),
                                    ),
                                  ),
                              ]
                            )
                          )
                      ),
                        ),
                      ),
                    ]
                  ),
          const SizedBox(
            height: 40,
          ),
          const Align(
            alignment: Alignment(-0.8, 0.0),
            child: Text(
              "La séléction du mois",
              style: TextStyle(
                  color: Color(0xFF005126),
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w400),
              textScaleFactor: 1.5,
            ),
          ),
          const SizedBox(height: 15),
          Carouselslidegaspiscore(
              colors: const Color(0xFFD5EFF1),
              duree: const Duration(seconds: 7),
              list: list0),
          const SizedBox(
            height: 15,
          ),
          const Align(
            alignment: Alignment(-0.8, 0.0),
            child: Text(
              "Les incontournables",
              style: TextStyle(
                  color: Color(0xFF005126),
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w400),
              textScaleFactor: 1.5,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Carouselslidegaspiscore(
            colors: const Color(0xFFEDD5EB),
            duree: const Duration(seconds: 5),
            list: list1,
          ),
          const SizedBox(
            height: 15,
          ),
          const Align(
            alignment: Alignment(-0.8, 0.0),
            child: Text(
              "Nouveaux produits",
              style: TextStyle(
                  color: Color(0xFF005126),
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w400),
              textScaleFactor: 1.5,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Carouselslidegaspiscore(
            colors: const Color(0xFFD5EDE0),
            duree: const Duration(seconds: 6),
            list: list2,
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
