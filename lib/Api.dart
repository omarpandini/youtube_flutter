import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:youtube_flutter/model/Video.dart';

const CHAVE_YOUTUBE_API = 'AIzaSyAwTXOHpRPGPOaIgwNcu9A7YHWie0oPZmk';
const URL = 'https://youtube.googleapis.com/youtube/v3/search?';

class Api {
  String teste() {
    return 'aaaaa';
  }

  Future pesquisar(String pesquisa) async {
    var _url = Uri.parse(
        '${URL}part=snippet&maxResults=10&order=date&q=flamengo&key=${CHAVE_YOUTUBE_API}');

    var response = await http.get(_url);

    Map<String, dynamic> _result;
    _result = json.decode(response.body);

    List<Video> videos = [];

    var _tituloVideo = '';
    var _idVideo = '';
    var _descricaoVideo = '';
    var _idCanal = '';
    var _dsImagem = '';
    for (var element in _result['items']) {
      _tituloVideo = element['snippet']['title'];
      _idVideo = element['id']['videoId'];
      _descricaoVideo = element['snippet']['description'];
      _idCanal = element['snippet']['channelId'];
      _dsImagem = element['snippet']['thumbnails']['default']['url'];

      Video video = new Video(
          id: _idVideo,
          titulo: _tituloVideo,
          descricao: _descricaoVideo,
          imagem: _dsImagem,
          canal: _idCanal);

      videos.add(video);
    }

    return videos;
  }
}
