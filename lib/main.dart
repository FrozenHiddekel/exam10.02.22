import 'package:first_app/allPack.dart';
import 'package:first_app/globals.dart';
import 'package:first_app/pockview.dart';
import 'package:flutter/material.dart';
import 'package:first_app/loadscrean.dart';

void main() {

  runApp(const MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'PockView': (context) => PockView(title: 'title'),
        'loadscrean':(context) =>  MyStatefulWidget(),
      },

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'pokemon handbook'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
       _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

     return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: getAllPack(),
        builder: (BuildContext cont, AsyncSnapshot<List> mylist) =>
                            mylist.hasData ?
                            ListView.builder(itemCount: mylist.data!.length,
                                itemBuilder:(BuildContext context, index) =>
                                    Card(margin: const EdgeInsets.all(10),
                                      child: ListTile(contentPadding: const EdgeInsets.all(10),
                                        leading: Image.network("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/"+ (index+2).toString() + ".png"),
                                        title: Text(mylist.data![index].name),
                                        //subtitle:  Text(mylist.data![index].url),
                                        onTap: ()=>{
                                        Globals.idpock=index,
                                          Globals.name=mylist.data![index].name,
                                        Navigator.pushNamed(context, 'loadscrean', arguments: [mylist.data![index].name, index])
                                      },
                                      ),))
                                :
                                Center(child: CircularProgressIndicator(),)
      )
    );

  }
}
