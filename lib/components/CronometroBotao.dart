// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;
  final void Function()? click;

  const CronometroBotao({
    super.key,
    required this.texto,
    required this.icone,
    this.click,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        textStyle: const TextStyle(fontSize: 25),
      ),
      onPressed: click,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icone,
              color: Colors.white,
              size: 35,
            ),
          ),
          Text(
            texto,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
