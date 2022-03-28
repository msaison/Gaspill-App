import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/provenance_header.png"),
          const SizedBox(height: 30,),
          imagewithmargin("assets/images/map0.png"),
          const SizedBox(height: 20,),
          Container(margin: const EdgeInsets.symmetric(horizontal: 20),child: const Divider(height: 4, color: Colors.black,)),
          const SizedBox(height: 20,),
          imagewithmargin("assets/images/map1.png"),
          const SizedBox(height: 40,),
        ],
      ),
    );
  }

  Widget imagewithmargin(String assetimages) => Container (
    margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Image(image: AssetImage(assetimages),
    ),
  );
}
