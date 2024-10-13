import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int rps1 = 1;
  int rps2 = 1;

  void play() {
    rps1 = Random().nextInt(2) + 1;
    print('$rps1');
    rps2 = Random().nextInt(2) + 1;
    print('$rps2');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('rock , paper , scissors'),
            backgroundColor: Colors.yellow
            ,
          ),
          
          body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/$rps1.png',
                    width: 120,
                    height: 120,
                  )),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/$rps2.png',
                    width: 120,
                    height: 120,
                  ))
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              child: ElevatedButton(
                onPressed: play,
                child: Text("play"),//play function 
              ),
            )
          ]),
        ]),
      ),
    ));
  }
}
//
//return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      //children: [
        //Text(displayText, style: TextStyle(fontSize: 24)),
        //SizedBox(height: 20), // Add some space between text and button
        //ElevatedButton(
          //onPressed: _toggleCondition,
         // child: Text('Toggle Condition'),
        //),
      //],
    //);
  
