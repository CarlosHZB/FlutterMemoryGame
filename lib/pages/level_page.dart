import 'package:app_test/constants.dart';
import 'package:app_test/widgets/card_level.dart';
import 'package:flutter/material.dart';


class LevelPage extends StatelessWidget {
  final Modo modo;

  const LevelPage({Key? key, required this.modo}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nível do jogo', style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 48.0),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          padding: const EdgeInsets.all(24),
          children: [
            CardLevel(modo: modo, nivel: 6),
            CardLevel(modo: modo, nivel: 8),
            CardLevel(modo: modo, nivel: 12),
            CardLevel(modo: modo, nivel: 16),
            CardLevel(modo: modo, nivel: 18),
          ],
        ),
      )
    );
  }
}