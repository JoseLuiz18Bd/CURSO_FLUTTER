import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  var perguntaSelecionada = 0;

  void responder() {
    print('pergunta 01 foi respondida!!!');
  }

  @override
  Widget build(BuildContext context) {
    final pergunta = [
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
            Text(pergunta[perguntaSelecionada]),
            ElevatedButton(
              child: Text('pergunta 1'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('pergunta 2'),
              onPressed: () {
                print('pergunta 02 foi respondida!!!');
              },
            ),
            ElevatedButton(
              child: Text('pergunta 3'),
              onPressed: () => print('pergunta 03 foi respondida!!!'),
            ),
          ],
        ),
      ),
    );
  }
}
