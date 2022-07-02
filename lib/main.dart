
import 'package:easy_nutrition/home.dart';
import 'package:easy_nutrition/login.dart';
import 'package:easy_nutrition/patient_register.dart';
import 'package:easy_nutrition/register.dart';
import 'package:easy_nutrition/signup.dart';
import 'package:easy_nutrition/usertype.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data_class.dart';


void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_)=>DataClass()),

  ],
      child:const MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ProviderDemoScreen(),

      );
  }
}

class ProviderDemoScreen extends StatefulWidget {
  const ProviderDemoScreen({Key? key}) : super(key: key);

  @override
  _ProviderDemoScreenState createState() => _ProviderDemoScreenState();
}

class _ProviderDemoScreenState extends State<ProviderDemoScreen> {

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
                backgroundColor: Colors.green,
                splashColor: Colors.greenAccent,

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
                backgroundColor: Colors.green,
                splashColor: Colors.greenAccent,

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

/*
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("Provider Demo"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignupPage()),
            );
          },
          child: Center(
            child: Container(
              height: 70,
              padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
              margin: const EdgeInsets.only(left: 40, right: 40),
              child: const Text("Go to Singup page", style: TextStyle(
                fontSize: 20,
                color: Color(0xFF74beef),
              ),),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(4, 4),
                      blurRadius: 15,
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4, -4),
                      blurRadius: 15,
                      spreadRadius: 1,
                    ),

                  ]
              ),
            ),
          ),
        ),
      ),
    );
  }

 */
}

/*
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: Home(),
    );
  }
}

 */
