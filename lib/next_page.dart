import 'package:flutter/material.dart';


class NextPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("nextpage"),
      ),
      body: Container(
        
        color:Colors.grey,
        child:Column(
          children:<Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
            },
              child: const Text('Back Page'),
              
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
                        color: Colors.black,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      )
      );
  }

}