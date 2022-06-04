import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_nutrition/usern.dart';

class ApplicationPage3 extends StatelessWidget {
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

      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Solicitud de Nutricionista",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Estado de solicitud:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 20,
                    ),
                  ),
                ],
              ),

              Container(
                height: 45,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(15.0),
                    topRight: const Radius.circular(15.0),
                    bottomLeft: const Radius.circular(15.0),
                    bottomRight: const Radius.circular(15.0),
                  ),

                ),
                child:
                  Text("APROBADO",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                    textAlign: TextAlign.center,
                  ),
              ),


              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/assets/aplication3.jpg"),
                    ),
                ),
              ),

          FloatingActionButton.extended(
            label: Text('Usar la aplicación'),
            backgroundColor: Colors.green,
            splashColor: Colors.greenAccent,

            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePageN()));
            },

          ),
            ],
          ),
        ),
      ),
    );
  }
}


