import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:youtube_flutter/Api.dart';
import 'package:youtube_flutter/model/Video.dart';
import 'package:youtube_flutter/styles/Styles.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    Api api = Api();
    return Padding(
      padding: const EdgeInsets.all(30),
      child: FutureBuilder(
          future: api.pesquisar('pesquisa'),
          builder: (context, snapshot) {
            List<Video> videos = snapshot.data;

            switch (snapshot.connectionState) {
              case ConnectionState.none:
                break;
              case ConnectionState.active:
                break;
              case ConnectionState.waiting:
                return Center(
                  child: CircularProgressIndicator(),
                );
                break;
              case ConnectionState.done:
                if (snapshot.hasData) {
                  return ListView.separated(
                      itemBuilder: (context, index) {
                        Video video = snapshot.data[index];
                        return Column(
                          children: [
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(video.imagem))),
                            )
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          height: 5,
                          color: Colors.red,
                        );
                      },
                      itemCount: snapshot.data.length);
                } else {
                  print('sem dados');
                }
                break;
              default:
            }

            return Text(
              ' ',
              style: Estilos.estiloTexto1,
            );
          }),
    );
  }
}
