import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 100;
  void _incrementCounter() {
    setState(() {
      
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'okok',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: 300,
              width: 300,
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  for (var i = 0; i < 9; i++)
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ColoredBox(
                        color: Colors.red,
                      ),
                    ),
                ],
              ),
            ),
           
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
