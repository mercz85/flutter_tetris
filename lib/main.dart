import 'package:flutter/material.dart';
import 'package:tetris/score_bar.dart';
import 'package:tetris/game.dart';
import 'package:tetris/next_block.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tetris(),
    );
  }
}

class Tetris extends StatefulWidget {
  Tetris({Key? key}) : super(key: key);

  @override
  State<Tetris> createState() => _TetrisState();
}

class _TetrisState extends State<Tetris> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TETRIS'),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      backgroundColor: Colors.indigo,
      body: SafeArea(
          child: Column(
        children: [
          ScoreBar(),
          Expanded(
              child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 10.0),
                      child: Game(),
                    )),
                Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5.0, 10.0, 10.0, 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          NextBlock(),
                          const SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.indigo.shade700),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Start',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.grey.shade200),
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ))
        ],
      )),
    );
  }
}
