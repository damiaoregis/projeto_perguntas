import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PergutaApp extends State<PergutaApp>{
  var perguntaSelecionada= 0;

  void responder(){
    setState(() {
      perguntaSelecionada++;
    });

  }
  @override
  Widget build(BuildContext context){

    final perguntas= [
      'Qual é a sua cor favorita?',
      'Qual é o animal favorito?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body:Column(
          children: <Widget>[

          ],
        ),
      ),
    );

  }
}

class PergutaApp extends StatefulWidget{


}