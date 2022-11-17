import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi segunda app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Hola Valenti'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(width: 100, height:(MediaQuery.of(context).size.height), color: Colors.red,),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 100, height: 100, color: Colors.yellow,),
                    Container(width: 100, height: 100, color: Colors.green,),
                  ]
              ),

            Container(width: 100, height:(MediaQuery.of(context).size.height),color: Colors.blue,),
          ],
        )
      );
  }
}
