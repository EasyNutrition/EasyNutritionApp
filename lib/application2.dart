import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'application3.dart';


class ApplicationPage2 extends StatelessWidget {

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Solicitud de Nutricionista",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,

                    ),),
                  SizedBox(height: 20),
                  Text("Completa los requisitos y envía tu solicitud de posible contratación.",
                    style: TextStyle(
                        fontSize: 20,
                        color:Colors.grey[700]),),
                  SizedBox(height: 20),


                ],
              ),

              Column(
                children: <Widget>[
                  Text("Selecciona  tu(s) especialidad(es)                    ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 20),

                  Row(
                    children: <Widget>[
                      MyWidget(),
                      Text("Nutrición clínica",
                      style: TextStyle(
                        fontSize: 20
                      ),),

                    ],
                  ),
                  SizedBox(height: 20),

                  Row(
                    children: <Widget>[
                      MyWidget(),
                      Text("Nutrición para aumento de\nmasa  muscular",
                        style: TextStyle(
                            fontSize: 20
                        ),),

                    ],
                  ),

                  SizedBox(height: 20),

                  Row(
                    children: <Widget>[
                      MyWidget(),
                      Text("Nutrición para bajar de peso",
                        style: TextStyle(
                            fontSize: 20
                        ),),
                    ],
                  ),

                  SizedBox(height: 20),

                  Row(
                    children: <Widget>[
                      MyWidget(),
                      Text("Sobrepeso y obesidad",
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  Text("Adjunta tu CV                                 ",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                  SizedBox(height: 20),

                  Container(
                      width: 300,
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0))
                          ),
                          onPressed: (){ print('Button Clicked.'); },
                          textColor: Colors.black87,
                          color: Colors.white,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(0,0,0,0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    color: Colors.white,
                                    padding: EdgeInsets.fromLTRB(10, 4, 4, 4),
                                    child: Text("        Ningún archivo seleccionado",
                                      style: TextStyle(color: Colors.black87),),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
                                    child: Icon(
                                      Icons.drive_folder_upload_outlined,
                                      color:Colors.grey,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                          ),
                      ),
                  ),
                  SizedBox(height: 20),

                ],
              ),


              Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),

                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ApplicationPage3()));

                    },
                    color: Color(0xff47FF86),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                      "Enviar",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                      ),
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
                      Text("Términos y Condiciones",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff47FF86),
                        ),
                        //textAlign: TextAlign.center,
                      ),
                      Text(" y",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                        //textAlign: TextAlign.center,
                      ),
                      Text(" Políticas de Privacidad",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff47FF86),
                        ),
                        //textAlign: TextAlign.center,
                      ),
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


class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool rememberMe = false;

  void _onRememberMeChanged(bool? newValue) => setState(() {
    rememberMe = newValue!;

    if (rememberMe) {

    } else {

    }
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: rememberMe,
        onChanged: _onRememberMeChanged,
    );
  }
}










