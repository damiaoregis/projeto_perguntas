import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';

import 'resposta.dart';
import 'resultado.dart';

main() => runApp(PergutaApp());

class _PergutaAppState extends State<PergutaApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Azul', 'Verde', ' Rosa', 'Vermelho']
    },
    {
      'texto': 'Qual é o animal favorito?',
      'respostas': ['Cachorro', 'Girafa', ' Elefante', 'Macaco']
    },
    {
      'texto': 'Qual é sua materia favorita?',
      'respostas': ['Português', 'Geografía', 'História', 'Matemática']
    },
  ];

  bool get temPerguntaaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaaSelecionada
        ? _perguntas[_perguntaSelecionada].cast()['respostas']
        : [];

    /*   for (String textoResp in perguntas[_perguntaSelecionada].cast()['respostas']) {
      respostas.add(Resposta(textoResp, _responder));
    }*/

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
          centerTitle: true,
        ),
        body: temPerguntaaSelecionada
            ?
           : Resultado(),
      ),
    );
  }
}

class PergutaApp extends StatefulWidget {
  _PergutaAppState createState() {
    return _PergutaAppState();
  }
}
