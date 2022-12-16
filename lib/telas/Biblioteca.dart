import 'package:flutter/material.dart';

import '../styles/Styles.dart';

class Biblioteca extends StatefulWidget {
  const Biblioteca({super.key});

  @override
  State<Biblioteca> createState() => _BibliotecaState();
}

class _BibliotecaState extends State<Biblioteca> {
  @override
  Widget build(BuildContext context) {
    return Text('Biblioteca', style: Estilos.estiloTexto1);
  }
}
