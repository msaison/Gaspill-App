import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:avatars/avatars.dart';

class Carouselslide extends StatelessWidget {
  final Color colors;
  final Duration duree;
  final List<String> list;
  const Carouselslide({
    Key? key,
    required this.colors,
    required this.duree,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        height: 142.0,
        autoPlayInterval: duree,
      ),
      items: list.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Card(
              color: colors,
              elevation: 4,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Avatar(
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    sources: [
                      GenericSource(
                          AssetImage(i.substring(0, (i.indexOf('|') - 1))))
                    ],
                    shape: AvatarShape.rectangle(100, 100,
                        const BorderRadius.all(Radius.circular(20.0))),
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        i.substring((i.indexOf('|') + 1), i.length),
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontFamily: "Jost",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    )),
                  ),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

class Carouselslidewithoutimage extends StatelessWidget {
  final Color colors;
  final Duration duree;
  final List<String> list;
  const Carouselslidewithoutimage({
    Key? key,
    required this.colors,
    required this.duree,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        height: 142.0,
        autoPlayInterval: duree,
      ),
      items: list.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Card(
              color: colors,
              elevation: 4,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        i,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontFamily: "Jost",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                    )),
                  ),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

class Carouselslidewithheader extends StatelessWidget {
  final Color colors;
  final Duration duree;
  final List<String> list;
  const Carouselslidewithheader({
    Key? key,
    required this.colors,
    required this.duree,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        height: 142.0,
        autoPlayInterval: duree,
      ),
      items: list.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Card(
              color: colors,
              elevation: 4,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Text(
                      i.substring(0, (i.indexOf('|') - 1)),
                      style: const TextStyle(
                          fontFamily: 'Lobster', color: Colors.black),
                      textScaleFactor: 1.0,
                    ),
                  ),
                  Expanded(
                    child: Container(
                    padding: const EdgeInsets.all(14),
                    child: Text(
                      i.substring((i.indexOf('|') + 1), i.length),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: "Jost",
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                  )),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

class Carouselslidegaspiscore extends StatelessWidget {
  final Color colors;
  final Duration duree;
  final List<String> list;
  const Carouselslidegaspiscore({
    Key? key,
    required this.colors,
    required this.duree,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        height: 142.0,
        autoPlayInterval: duree,
      ),
      items: list.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Card(
              color: colors,
              elevation: 4,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Avatar(
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    sources: [
                      GenericSource(
                          AssetImage(i.substring(0, (i.indexOf('|') - 1))))
                    ],
                    shape: AvatarShape.rectangle(100, 100,
                        const BorderRadius.all(Radius.circular(20.0))),
                  ),
                  Expanded(
                    child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(80, 0, 0, 10),
                  child: Text(
                    i.substring((i.indexOf(',') +1), i.length),
                    style: const TextStyle(fontFamily: 'Lobster',),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                  child: Text(
                    i.substring((i.indexOf('|') + 1), (i.indexOf(','))),
                    style: const TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ],
          ),
                  ),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}