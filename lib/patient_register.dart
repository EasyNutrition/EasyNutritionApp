import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientRegister extends StatefulWidget {


  @override
  _PatientRegisterState createState() => _PatientRegisterState();
}

class _PatientRegisterState extends State<PatientRegister> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              'Completa tus datos personales',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,

              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            TextField(
              decoration: InputDecoration(labelText:"Fecha de nacimiento:" ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            TextField(
              decoration: InputDecoration(labelText:"Teléfono de contacto:" ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            TextField(
              decoration: InputDecoration(labelText:"¿En dónde vives?:" ),

            ),

            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            TextField(
              decoration: InputDecoration(labelText:"¿Cuánto mides? (cm):" ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            TextField(
              decoration: InputDecoration(labelText:"¿Cuánto pesas? (kg):" ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            TextField(
              decoration: InputDecoration(labelText:"¿Qué tan activo eres?:" ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
            ),
            FloatingActionButton.extended(
              label: Text('Siguiente'),
              backgroundColor: Colors.greenAccent,
              splashColor: Colors.white,
              onPressed: () {},

            ),

          ],
        ),
      ),
    );
  }
}
