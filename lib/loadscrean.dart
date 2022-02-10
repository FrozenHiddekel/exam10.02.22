import 'package:first_app/allStats.dart';
import 'package:first_app/globals.dart';
import 'package:flutter/material.dart';

//void main() => runApp(const MyApp1());


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;


  getget(BuildContext context) async {
    Globals.stats=(await allStats(Globals.idpock));
    print(Globals.stats);
    Navigator.pushReplacementNamed(context, 'PockView');
  }



  @override
  void initState() {
    //print(Globals.stats);
    getget(context);
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..addListener(() {
      setState(() {});
    });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Loading',
              style: Theme.of(context).textTheme.headline6,
            ),
            CircularProgressIndicator(
              value: controller.value,
              semanticsLabel: 'Loading',
            ),
          ],
        ),
      ),
    );
  }
}
