import 'package:easy_nutrition/patient_register.dart';
import 'package:flutter/material.dart';
class Register extends StatelessWidget {


  @override

  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16) ,
          decoration: BoxDecoration(color: Colors.white),
          child: ListView(children: [
            Padding(
              padding: EdgeInsets.only(top: 50),
            ),
            Text(
              'Registremos tus datos',
              style: TextStyle(
                fontSize: 55.0,
                fontWeight: FontWeight.bold,

              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            Text(
              
              'Para empezar, cuéntanos...',
              style: TextStyle(
                  fontSize: 30.0
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: '¿Cuál es tu nombre?',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: '¿Cuál es tu apellido?',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 80),
            ),

            Text(
              '¿Cuál es tu sexo?',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton.extended(
                  label: Text('Mujer'),
                  backgroundColor: Colors.green,
                  splashColor: Colors.greenAccent,

                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PatientRegister()));
                  },
                ),
                FloatingActionButton.extended(
                  label: Text('Hombre'),
                  backgroundColor: Colors.green,
                  splashColor: Colors.greenAccent,

                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PatientRegister()));
                  },

                ),
              ],



            ),


            ],),


        ),

    );
  }
}

