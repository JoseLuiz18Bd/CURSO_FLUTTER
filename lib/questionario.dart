import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

// CRIAÇÃO DO COMPONENTE STATELESS
class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() responder;

// CONTRUTOR COM PARAMETROS NOEADOS E OBRIGATORIO
  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
  });

  bool get temSelecao {
    return perguntaSelecionada < perguntas.length;
  }

// CRIAÇÃO DO Widget
  @override
  Widget build(BuildContext context) {
    List<String> respostas = temSelecao
        ? perguntas[perguntaSelecionada]['respostas'] as List<String>
        : [];

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['pergunta'] as String),
        ...respostas.map((texto) => Resposta(texto, responder)).toList(),
      ],
    );
  }
}
