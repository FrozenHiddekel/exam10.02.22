import 'package:first_app/allStats.dart';
import 'package:first_app/globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class PockView extends StatefulWidget {
  const PockView({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _PockViewState createState() => _PockViewState(
  );
}

class _PockViewState extends State<PockView> {

@override
  void initState() {
    super.initState();
  }

//ss
  @override
  Widget build(BuildContext context) {
    //var s = ModalRoute.of(context)!.settings.arguments as List;
    return
      Scaffold(
        appBar: AppBar(),
          body:
      Column(
      children: [
     Image.network("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/"+ ((Globals.idpock as int) +2).toString() +".png"),
        Text(Globals.name as String,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w600,
          ),

        ),
        Row(
          children: [Text("hp: " + Globals.stats[0].toString(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),],
        ),
        Row(
          children: [Text("attack: " + Globals.stats[1].toString(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),],
        ),
        Row(
          children: [Text("defense: " + Globals.stats[2].toString(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),],
        ),
        Row(
          children: [Text("special-attack: " + Globals.stats[3].toString(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),],
        ),
        Row(
          children: [Text("special-defense: " + Globals.stats[4].toString(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),],
        ),
        Row(
          children: [Text("speed: " + Globals.stats[5].toString(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),],
        ),

      ],
    ));
  }
}
