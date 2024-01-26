import 'package:flutter/material.dart';
import 'questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [
    {
      'pergunta': 'Qual é o seu nome?',
      'respostas': [
        'José Luiz',
        'Pietro',
        'João Paulo',
        'Ricardo',
        'Henrique',
      ]
    },
    {
      'pergunta': 'Qual é a sua idade?',
      'respostas': [
        '39 anos',
        '12 anos',
        '13 anos',
        '5 anos',
        '38 anos',
      ]
    },
    {
      'pergunta': 'Qual é o seu time do coração?',
      'respostas': [
        'Flamengo',
        'Palmeiras',
        'São Paulo',
        'Corinthians',
        'Vasco',
      ]
    },
  ];

  void _responder() {
    if (temSelecao) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temSelecao {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temSelecao
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder,
              )
            : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
