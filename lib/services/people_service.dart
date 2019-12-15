import 'package:media/models/people_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



String url = 'https://swapi.co/api/people/?format=json';


Future<SwapPeople> getpeople() async{
  final pepreq = await http.get(url);
  if(pepreq.statusCode == 200){
    return SwapPeople.fromJson(jsonDecode(pepreq.body));
  }
  else throw{
    print('There is no internet man')
  };
}