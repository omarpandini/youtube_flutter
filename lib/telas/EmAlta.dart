import 'package:flutter/material.dart';
import 'package:youtube_flutter/styles/Styles.dart';

class EmAlta extends StatefulWidget {
  const EmAlta({super.key});

  @override
  State<EmAlta> createState() => _EmAltaState();
}

class _EmAltaState extends State<EmAlta> {
  @override
  Widget build(BuildContext context) {
    return Text('Em Alta', style: Estilos.estiloTexto1);
  }
}
