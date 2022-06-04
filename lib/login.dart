import 'package:easy_nutrition/home_page.dart';
import 'package:easy_nutrition/view_booking_list.dart';
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
                'Inicia Sesión',
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
                            backgroundColor: Colors.white,
                            splashColor: Colors.green,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                          ),
                          Column(
                            children: <Widget>[
                              MaterialButton(
                                  minWidth: double.infinity,
                                  height: 60,
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));

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
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));

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
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
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
