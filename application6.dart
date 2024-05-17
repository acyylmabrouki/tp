import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
 

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class  MyCustomFormState extends State <MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  LoginData loginData= LoginData();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: SafeArea(
          child: Center(
            child: Form(
              key: _formKey,
              child: Form(
                key: _formKey,
                child:
                Column(
                  children: <Widget[
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: 'Name',
                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        border: 
                        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),

                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty){
                          return 'Please enter your name';
                        }
                        else
                        loginData.name=value;
                        return null;

                      },
                      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.lightBlueAccent,
            onPrimary: Colors.white,
            shadowColor: Colors.lightBlue,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            elevation: 5,
          ),
          onPressed: () {
            if(_formKey.currentState.validate()){
              _formKey.currentState.save();
              Navigator.pushNamed(context, '/second'
              ,arguments: loginData);
            }
          },
                    )
                  ],
                )
              )
            ),
          ),
        ),
        
        )
      )
    );
  }
}