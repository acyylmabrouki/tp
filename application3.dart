import 'package:flutter/material.dart';

class MyClass3 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Troisième Application Flutter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('img3.jpg'),
              Text(
                'Hello Word'
              ),
            ],
          )
        ),
      ),
    );
  }
}