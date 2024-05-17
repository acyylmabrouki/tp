import 'package:flutter/material.dart';

class MyClass4 extends StatelessWidget {


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
              Container(
                child: Image.asset('img3.jpg',fit: BoxFit.fill,),
                width: 350,
              ),
              Text(
                'Hello Word'
              ),
            ]
          )
        ),
      ),
    );
  }
}