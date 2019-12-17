import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:media/models/films_model.dart';
import 'package:media/models/people_model.dart';
import 'package:media/models/planets_model.dart';
import 'package:media/services/film_service.dart';
import 'package:media/services/people_service.dart';
import 'package:media/services/planet_service.dart';
import 'package:url_launcher/url_launcher.dart';


void main() => runApp(MaterialApp(home: StarWars(),debugShowCheckedModeBanner: false,));


class StarWars extends StatefulWidget {
  @override
  _StarWarsState createState() => _StarWarsState();
}

class _StarWarsState extends State<StarWars> {

  Future<Swfilms> films;
  Future<SwapPeople> people;
  Future<SwapPlanet> planet;
  
  @override
  void initState() {
    films = getfilms();
    people = getpeople();
    planet = getplanet();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('StarWars',style: TextStyle(color: Color.fromRGBO(255, 232, 31, 1)),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: FutureBuilder(
        future: people,
        builder: (context,snapshot){
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data.results.length,
              itemBuilder: (context,index){
                return Card(
                  color: Colors.yellow,
                  child: ExpansionTile(
                      title: ListTile(
                      title: Text(snapshot.data.results[index].name,style: TextStyle(fontSize: 20)),
                      subtitle: Text(snapshot.data.results[index].gender.toString(),style: TextStyle(fontSize: 10),
                    ),
                  ),
                  ),
                );
              },
            );
          }
          return SpinKitDualRing(lineWidth: 20,color: Colors.yellow, size: 50,);
        },
      )
    );
  }
}

// _launchURL() async {
//   const url = 'https://flutter.dev';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }