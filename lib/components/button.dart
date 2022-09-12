import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  //constantes para cor
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big; //botão duplo
  final Color color;
  final void Function(String) cb;

  Button({
    required this.text,
    this.big = false, //ele é falso por padrão
    this.color = DEFAULT,
    required this.cb,
    });
    //construtor nomeado
    Button.big({
    required this.text,
    this.big = true, //ele é falso por padrão
    this.color = DEFAULT,
    required this.cb,
    });
    Button.operation({
    required this.text,
    this.big = false, //ele é falso por padrão
    this.color = OPERATION,
    required this.cb,
    });
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        child: Text(
          text,
          style:TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
            ),
          ),
        onPressed: () => cb(text),
            ),
    );
  }
}