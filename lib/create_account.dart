import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() =>  _CreateAccountState();

}

class _CreateAccountState extends State<CreateAccount> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),
              Text(
                'Creemos tu cuenta',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
              ),

              FloatingActionButton.extended(
                label: Text('Continuar con Google'), // <-- Text
                backgroundColor: Colors.redAccent,
                splashColor: Colors.white,
                icon: Icon( // <-- Icon
                  Icons.account_circle_sharp,
                  size: 24.0,
                ),
                onPressed: () {},
                        ),
              Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        ),
              FloatingActionButton.extended(
                label: Text('Continuar con Facebook'),
                backgroundColor: Colors.blueAccent,
                splashColor: Colors.lightBlueAccent,
                icon: Icon( // <-- Icon
                  Icons.account_circle_sharp,
                  size: 24.0,
                ),
                onPressed: () {},

              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              ),
              FloatingActionButton.extended(
                label: Text('Continuar con Correo'),
                backgroundColor: Colors.greenAccent,
                splashColor: Colors.lightGreenAccent,
                icon: Icon( // <-- Icon
                  Icons.attach_email_rounded,
                  size: 24.0,
                ),
                onPressed: () {},

              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
              ),
              Text(
                'Al continuar, estarás aceptando nuestros',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                    fontFamily: 'Karla'
                ),
              ),

              RichText(text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Términos y Condiciones',
                    style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 15.0,
                        fontFamily: 'Karla'
                    ),
                  ),

                  TextSpan(
                    text: 'y',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Karla'
                    ),
                  ),
                  TextSpan(
                    text: 'Política de Privacidad',
                    style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 15.0,
                        fontFamily: 'Karla'
                    ),
                  ),
                ],
              ),
                    ),
                    ],
      ),
              ],
    ));

  }
}