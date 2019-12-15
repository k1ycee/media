import 'package:media/models/films_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


String url = 'https://swapi.co/api/films/?format=json';

Future<Swfilms> getfilms() async{
  final filmreq = await http.get(url);
  if(filmreq.statusCode == 200){
    return Swfilms.fromJson(jsonDecode(filmreq.body));
  }
  else throw{
    print('There is no internet man')
  };
}