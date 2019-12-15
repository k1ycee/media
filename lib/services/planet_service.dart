import 'package:media/models/planets_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



String url = 'https://swapi.co/api/planets/?format=json';


Future<SwapPlanet> getpeople() async{
  final pepreq = await http.get(url);
  if(pepreq.statusCode == 200){
    return SwapPlanet.fromJson(jsonDecode(pepreq.body));
  }
  else throw{
    print('There is no internet man')
  };
}