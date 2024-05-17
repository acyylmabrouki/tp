import 'package:flutter/material.dart';

class MyClass1 extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Première Application Flutter'),
        ),
        body: Center(
          child: Text('Hello World!',
          style: TextStyle(color: Colors.blueAccent, fontSize: 25.0)),
        ),
      ),
    );
  }
}
