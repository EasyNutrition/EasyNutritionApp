import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.deepPurpleAccent,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[

          Image(
            image: AssetImage("assets/iniciosesion.png"),
            fit: BoxFit.cover,

          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),
              Text(
                'Inicia sesión',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),

              Form(
                  child: Theme(
                    data: ThemeData(
                        brightness: Brightness.dark, primarySwatch: Colors.teal,
                        inputDecorationTheme: InputDecorationTheme(
                            labelStyle: TextStyle(
                                color: Colors.green,
                                fontSize: 15,
                            ),
                        ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[


                          TextFormField(
                            decoration: InputDecoration(
                                labelText: " Ingresa tu correo:"
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),

                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Ingresa tu contraseña:"
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 30),
                          ),
                          FloatingActionButton.extended(
                            label: Text('Ingresar'), // <-- Text
                            backgroundColor: Colors.greenAccent,
                            onPressed: () {},
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                          ),
                          FloatingActionButton.extended(
                            label: Text('Continuar con Google'),
                            backgroundColor: Colors.white,
                            splashColor: Colors.redAccent,
                            icon: Icon( // <-- Icon
                              Icons.account_circle_sharp,
                              size: 24.0,
                            ),
                            onPressed: () {},

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          ),
                          FloatingActionButton.extended(
                            label: Text('Continuar con Facebook'),
                            backgroundColor: Colors.blueAccent,
                            splashColor: Colors.lightBlueAccent,
                            icon: Icon( // <-- Icon
                              Icons.account_circle_sharp,
                              size: 24.0,
                            ),
                            onPressed: () {

                            },

                          ),

                        ],
                      ),
                    ),
                  ),

              )
            ],

          )
        ],
      ),
    );
  }
}