import 'package:flutter/material.dart';
import 'dart:math';

class GamePage extends StatelessWidget {
  GamePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Game', style: TextStyle(fontSize: 25),),
            Text('Escolha um número de 1 a 6 e lance o dado.', style: TextStyle(fontSize: 16),),
            ElevatedButton(
              child: Text('Lançar'),
              onPressed: () => print('aqui'),
            ),
          ]
      ),
    );
  }
}
