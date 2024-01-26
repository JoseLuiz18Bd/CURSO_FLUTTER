import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Thankyou!!',
        style: TextStyle(
          fontSize: 35,
          color: Color.fromARGB(255, 201, 0, 0),
        ),
      ),
    );
  }
}
