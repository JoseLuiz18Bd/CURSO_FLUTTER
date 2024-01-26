import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  const Resposta(this.texto, this.quandoSelecionado, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 225, 89, 89),
          foregroundColor: const Color.fromARGB(255, 3, 1, 1),
        ),
        child: Text(texto),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
