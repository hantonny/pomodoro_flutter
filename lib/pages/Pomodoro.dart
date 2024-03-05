// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pomodoro/components/Cronometro.dart';
import 'package:pomodoro/components/EntradaTempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Cronometro()),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntradaTempo(title: 'Trabalho', valor: 25),
                EntradaTempo(title: 'Descanso', valor: 5)
              ],
            ),
          )
        ],
      ),
    );
  }
}
