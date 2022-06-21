import 'package:flutter/material.dart';

//
const kBlocks_X = 10;
const kBlocks_Y = 20;

class Game extends StatefulWidget {
  Game({Key? key}) : super(key: key);

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    //The ratio must be 10x20
    return AspectRatio(
      aspectRatio: kBlocks_X / kBlocks_Y,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.indigo.shade800,
            border: Border.all(
              width: 2.0,
              color: Colors.indigoAccent,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
  }
}
