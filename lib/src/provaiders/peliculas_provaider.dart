import 'package:pelicula/src/models/pelicula_models.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PeliculasProvaider{
  String _apikey     ='4f5e978394845ffb5019517b2f3ffc8b';
  String _url        ='api.themoviedb.org';
  String _lenguage   ='es-ES';


  Future<List<Pelicula>> getPopulares() async{

  final url = Uri.https( _url,'3/movie/popular',{
    'api_key'  : _apikey,
    'lenguage': _lenguage
  });

  final respuesta = await http.get( url );
  final decodeData = json.decode(respuesta.body);

  final peliculas = new Peliculas.fromJsonList(decodeData['results']);
  print(peliculas.items[1].title);
  return peliculas.items;
}
}

