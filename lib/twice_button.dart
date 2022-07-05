import 'package:flutter/material.dart';


class TwiceButton extends StatelessWidget {
  const TwiceButton({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("タイトル"),
      ),
      body: const Center(
        child: Count(),
      ),
    );
  }
}

// StatefulWidget を継承すると State を扱えるようになる
class Count extends StatefulWidget {
  const Count({Key? key}) : super(key: key);
  @override
  State<Count> createState() => _CountState();//stateの宣言
}
// State を継承して使う
class _CountState extends State<Count> {
  int _counter = 0;//stateを持つプライベート変数
  int _counter2 = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _discrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _twice() {
    setState(() {
      _counter2 = _counter2 * 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '足し算:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {
                _discrementCounter();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
              child: const Text(
                "マイナス",
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                _incrementCounter();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              child: const Text(
                "プラス",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '2倍されてく:',
            ),
            Text(
              '$_counter2',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
        TextButton(
          onPressed: () {
            _twice();
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.pink),
          ),
          child: const Text(
            "2倍",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}