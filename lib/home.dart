import 'package:easy_nutrition/usertype.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Home   extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/fondoini.png"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.white24.withOpacity(0.5),BlendMode.darken)
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget> [
              Text(
                'Tu nutricionista,',
                style: TextStyle(color: Colors.black,fontSize: 40.0,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,


              ),
              Text(
                'cerca de ti',
                style: TextStyle(color: Colors.black,fontSize: 40.0,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              Padding(
                padding: EdgeInsets.only(top: 350),
              ),
              FloatingActionButton.extended(
                label: Text('Empezar'),
                backgroundColor: Colors.greenAccent,
                splashColor: Colors.white,

                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UserType()));
                },

              ),

              RichText(text: TextSpan(
                children: [
                  TextSpan(
                      text: '¿Ya tienes una cuenta?',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Karla'
                      ),
                   ),
                ],
              ),
          ),
              FloatingActionButton.extended(
                label: Text('Inicia Sesión'),
                backgroundColor: Colors.greenAccent,
                splashColor: Colors.white,

                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginPage()));
                },

              ),
            ],
          ),
        ),


      ),


    );
  }
}
