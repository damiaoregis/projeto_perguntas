import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'questionario.dart';
import 'resultado.dart';

main() => runApp(PergutaApp());

class _PergutaAppState extends State<PergutaApp> {
  var _perguntaSelecionada = 0;
  var _pontuuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Azul', 'nota': 9},
        {'texto': 'Verde', 'nota': 10},
        {'texto': 'Rosa', 'nota': 5},
        {'texto': 'Vermelho', 'nota': 2},
      ]
    },
    {
      'texto': 'Qual é o animal favorito?',
      'respostas': [
        {'texto': 'Cachorro', 'nota': 3},
        {'texto': 'Girafa', 'nota': 6},
        {'texto': 'Elefante', 'nota': 5},
        {'texto': 'Macaco', 'nota': 10},
      ]
    },
    {
      'texto': 'Qual é sua materia favorita?',
      'respostas': [
         {'texto':'Português','nota': 3},
         {'texto': 'Geografía','nota': 7},
         {'texto': 'História','nota': 5},
         {'texto':'Matemática','nota': 10},
      ]
    },
  ];

  bool get temPerguntaaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(int pontuacao) {
    setState(() {
      _perguntaSelecionada++;
      _pontuuacaoTotal += pontuacao;
    });
  }
  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuuacaoTotal = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
          centerTitle: true,
        ),
        body: temPerguntaaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_pontuuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PergutaApp extends StatefulWidget {
  _PergutaAppState createState() {
    return _PergutaAppState();
  }
}
