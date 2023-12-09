import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final _pergunta = [
      'qual é o seu nome?',
      'qual é a sua idade?',
      'qual é o seu time do coração?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(_pergunta[_perguntaSelecionada]),
            ElevatedButton(
              child: Text('pergunta 1'),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: Text('pergunta 2'),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: Text('pergunta 3'),
              onPressed: _responder,
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
