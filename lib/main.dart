import 'package:flutter/material.dart';
import 'package:flutter_study/first_page.dart';
import 'package:flutter_study/next_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter sample app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(title: 'Flutter Demo'),
      initialRoute: '/',
      routes:{
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const FirstPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/next': (context) => NextPage(),
      },
    );
  }
}
