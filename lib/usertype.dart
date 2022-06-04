import 'package:easy_nutrition/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserType extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 750,
                width: 800,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 50),
                    ),
                    Text(
                      '¿Qué tipo de usuario eres',
                      style: TextStyle(color: Colors.black,fontSize: 40.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,

                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                    ),
                    Text(
                      'Elige tu tipo de usuario para',
                      style: TextStyle(color: Colors.black,fontSize: 20.0),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'comenzar a utilizar la aplicación',
                      style: TextStyle(color: Colors.black,fontSize: 20.0),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/paciente.png'),
                            fit: BoxFit.cover,

                          )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                    ),
                    FloatingActionButton.extended(
                      label: Text('Paciente'),
                      backgroundColor: Colors.greenAccent,
                      splashColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },

                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 50),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/nutricionista.png'),
                            fit: BoxFit.cover,

                          )
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 30),
                    ),
                    FloatingActionButton.extended(
                      label: Text('Nutricionista'),
                      backgroundColor: Colors.greenAccent,
                      splashColor: Colors.white,
                      onPressed: () {},

                    ),


                  ],
                ),
              ),
            ]
        ),


      ),
    );

  }
}