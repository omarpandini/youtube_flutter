import 'package:flutter/material.dart';

import '../styles/Styles.dart';

class Inscricoes extends StatefulWidget {
  const Inscricoes({super.key});

  @override
  State<Inscricoes> createState() => _InscricoesState();
}

class _InscricoesState extends State<Inscricoes> {
  @override
  Widget build(BuildContext context) {
    return Text('Inscrições', style: Estilos.estiloTexto1);
  }
}
