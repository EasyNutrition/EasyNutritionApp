import 'package:easy_nutrition/signup2H.dart';
import 'package:easy_nutrition/signup2M.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {

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
                  Text("Registremos tus datos",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Para empezar, cuéntanos...",
                    style: TextStyle(
                        fontSize: 20,
                        color:Colors.grey[700]),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Nombre",
                      labelText: "¿Cuál es tu nombre?",
                      labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    obscureText: false,
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  TextField(
                    decoration: InputDecoration(
                      hintText: "Apellido",
                      labelText: "¿Y tu apellido?",
                      labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    obscureText: false,
                    maxLines: 1,
                  ),
                ],
              ),

              Column(
                children: <Widget>[
                  Text("¿Cuál es tu sexo?",
                    style: TextStyle(
                        fontSize: 24,
                        color:Colors.grey[700]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //
                    children: <Widget>[
                      MaterialButton(
                        minWidth: 130,
                        height: 50,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage2M()));

                        },
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color(0xff47FF86),
                            ),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text(
                          "Hombre",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20
                          ),
                        ),
                      ),
                      SizedBox(width: 20),

                      MaterialButton(
                        minWidth: 130,
                        height: 50,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage2F()));
                        },

                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color(0xff47FF86),
                            ),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text(
                          "Mujer",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 20
                          ),
                        ),
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
