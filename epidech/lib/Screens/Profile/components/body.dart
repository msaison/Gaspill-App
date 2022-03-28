import 'package:avatars/avatars.dart';
import 'package:epidhec/components/list_card.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter/material.dart';

final List<String> listPartage = [
  'Défis partage | Partage notre application sur Facebook et gagne 10 gaspi-points',
  'Défis partage | Parraine 10 amis et gagne 15 gaspi-points',
  'Défis partage | Partage une photo de ton plat cuisiné avec nos produits sur instagram en nous identifiant et gagne 15 gaspi-points',
];

final List<String> listQuestion = [
  'Défis questions | Confie-nous un de tes conseils anti-gaspillage et gagne 5 gaspi-points',
  'Défis questions | Répond à ce questionnaire et obtient 10 gaspi-points',
];

final List<String> listScan = [
  'Défis scan | Scanne 10 produits ce mois-ci et gagne 20 gaspi-points',
  'Défis scan | Scanne ton premier produit et obtient 5 gaspi-points',
  'Défis scan | Scanne un jambon Fleury et gagne 10 gaspi-points',
];

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          buildTop(),
          const SizedBox(
            height: 105,
          ),
          const Text(
            "Marc Guillet",
            style: TextStyle(
                fontFamily: 'Jost',
                fontWeight: FontWeight.w500,
                color: Colors.black),
            textScaleFactor: 2.5,
          ),
          const Text(
            "Apprenti Fleury - Novice",
            style: TextStyle(
                fontFamily: 'Jost',
                fontWeight: FontWeight.w400,
                color: Color(0xFF005126)),
            textScaleFactor: 1.5,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "0 gaspi-points",
            style: TextStyle(fontFamily: 'Lobster', color: Colors.black),
            textScaleFactor: 1.0,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: FAProgressBar(
              backgroundColor: const Color(0xFFC4C4C4),
              progressColor: const Color(0xFF4CAB78),
              size: 10,
              currentValue: 0,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: const Image(
              image: AssetImage("assets/images/no_mission.png"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment(-0.8, 0.0),
            child: Text(
              "Mes défis du mois",
              style: TextStyle(
                  color: Color(0xFF005126),
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w400),
              textScaleFactor: 1.6,
            ),
          ),
          Carouselslidewithheader(
            colors: const Color(0xFFD5EDE0),
            duree: const Duration(seconds: 6),
            list: listPartage,
          ),
          Carouselslidewithheader(
            colors: const Color(0xFFEDD5EB),
            duree: const Duration(seconds: 8),
            list: listQuestion,
          ),
          Carouselslidewithheader(
            colors: const Color(0xFFD5EFF1),
            duree: const Duration(seconds: 7),
            list: listScan,
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }

  Widget buildTop() {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        coverImage(),
        Positioned(
          top: 130 - 75,
          child: profileImage(),
        )
      ],
    );
  }

  Widget coverImage() => Image.asset("assets/images/header.png");

  Widget profileImage() => Avatar(
        elevation: 5,
        shadowColor: Colors.black,
        sources: [
          GenericSource(
            const AssetImage ("assets/images/profile_picture.jpg"),
          ),
        ],
        shape: AvatarShape.rectangle(
            140, 140, const BorderRadius.all(Radius.circular(50.0))),
      );
}
