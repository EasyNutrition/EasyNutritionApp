import 'package:easy_nutrition/politpriv.dart';
import 'package:easy_nutrition/signup.dart';
import 'package:easy_nutrition/signupopc.dart';
import 'package:easy_nutrition/termycond.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'application.dart';

class SignupPage3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Nutricionista",
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,
            size: 20,
            color: Colors.black,),


        ),
      ),

      body: Form(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Creemos tu cuenta",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ApplicationPage()));

                    },
                    color: Colors.white,

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage("lib/assets/google.png"),
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Continuar con Google",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ApplicationPage()));

                    },
                    color: Color(0xff3B5998),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage("lib/assets/facebook.png"),
                          width: 30,
                          height: 30,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Continuar con Facebook",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));
                    },
                    color: Color(0xff47FF86),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage("lib/assets/correo.png"),
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Continuar con Correo",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Al continuar, estarás aceptando nuestros",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Termycond()));
                        },
                        child: new Text("Términos y Condiciones",
                          style: TextStyle(
                          fontSize: 11,
                          color: Color(0xff47FF86),
                        ),
                        ),
                      ),

                      /*
                      Text("Términos y Condiciones",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff47FF86),
                        ),
                      ),

                       */

                      Text("y",
                        style: TextStyle(
                          fontSize: 9,
                        ),
                      ),

                      FlatButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> PoliticPriv()));
                        },
                        child: new Text("Políticas de Privacidad",
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xff47FF86),
                          ),
                        ),
                      ),

                      /*
                      Text(" Políticas de Privacidad",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff47FF86),
                        ),
                      ),

                       */


                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
