import 'package:flutter/material.dart';

class Questionario extends StatelessWidget {
  final List<Map><String, Object>> perguntas;
  final int pergunntaSelecionada;
  final void Function() responder;

  Questionario({@required perguntas });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
        ...respostas.map((t) => Resposta(t, _responder)),
      ],
    );
  }
}
