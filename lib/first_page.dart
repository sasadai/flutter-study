import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("First"),
            IconButton(
              onPressed: () {
                // 画面遷移には Navigator を使う
                // Navigator.push(
                //   context,
                //   // 次の画面を MaterialPageRoute に渡して Route を作り，それを表示させてる
                //   MaterialPageRoute<void>(
                //     builder: (BuildContext context) => NextPage(),
                //   ),
                // );
                Navigator.pushNamed(context, "/next");
              },
              icon: const Icon(Icons.arrow_forward),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/twice");
                },
                child: const Text("計算ページ")
            )
          ],
        ),
      ),
    );
  }
}
