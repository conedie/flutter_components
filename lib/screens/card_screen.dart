import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          children: const [
            CardCurstom1(),
            SizedBox(height: 10),
            CustomCard2(
              imgUrl:
                  'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg',
              nameImg: 'Linda montaña y lago',
            ),
            SizedBox(height: 10),
            CustomCard2(
              imgUrl:
                  'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg',
            ),
            SizedBox(height: 10),
            CustomCard2(
              imgUrl:
                  'https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg',
            ),
            SizedBox(height: 10),
            CustomCard2(
              imgUrl:
                  'https://cdn3.dpmag.com/2021/07/Landscape-Tips-Mike-Mezeul-II.jpg',
            ),
          ],
        ));
  }
}
