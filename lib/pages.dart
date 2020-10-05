import 'package:flutter/material.dart';

class PagesScreen extends StatelessWidget {
  final String texto;

  PagesScreen(this.texto);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text(texto),
        ),
      ),
    );
  }
}
