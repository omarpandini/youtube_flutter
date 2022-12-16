import 'dart:html';

import 'package:flutter/material.dart';
import 'package:youtube_flutter/telas/Inicio.dart';
import 'package:youtube_flutter/telas/emAlta.dart';

import 'telas/Biblioteca.dart';
import 'telas/Inscricoes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiceAtual = 0;
  @override
  Widget build(BuildContext context) {
    TextStyle _estilo = TextStyle(fontSize: 35);

    List<Widget> _telas = [Inicio(), EmAlta(), Biblioteca(), Inscricoes()];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black, opacity: 0.5),
        title: Image(
          image: AssetImage('images/youtube.png'),
          width: 150,
          height: 70,
        ),
        actions: [
          IconButton(
              onPressed: () {
                print('clicou camera');
              },
              icon: Icon(Icons.videocam)),
          IconButton(
              onPressed: () {
                print('clicou search');
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                print('clicou account_circle');
              },
              icon: Icon(Icons.account_circle)),
        ],
      ),
      body: Container(
        child: Center(child: _telas[_indiceAtual]),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _indiceAtual,
          onTap: (value) {
            setState(() {
              _indiceAtual = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Início',
                backgroundColor: Colors.orange),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_fire_department),
                label: 'Em Alta',
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions),
                label: 'Inscrições',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books),
                label: 'Biblioteca',
                backgroundColor: Colors.grey),
          ]),
    );
  }
}
