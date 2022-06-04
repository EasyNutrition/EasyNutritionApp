import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Premium extends StatefulWidget {
  const Premium({Key? key}) : super(key: key);
  @override
  State<Premium> createState() => _Premium();
}

class _Premium extends State<Premium> {
  @override
  Widget build(BuildContext context) {
    const IconData diamond_outlined =
        IconData(0xf05e7, fontFamily: 'MaterialIcons');
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Padding(
              padding:
                  const EdgeInsets.only(top: 32.0, left: 24.0, right: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Transform.rotate(
                      angle: 40,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.add_sharp),
                        color: Colors.grey[600],
                        iconSize: 36,
                      ),
                    ),
                  ]),
                  SizedBox(height: 16),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Easy Nutrition ",
                                style: TextStyle(fontSize: 24)),
                            Text("Premium",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500)),
                          ],
                        ),
                        SizedBox(height: 24),
                        Image.asset("assets/diamond.png", height: 125),
                        SizedBox(height: 24),
                        Text(
                          "Goza de los beneficios de ser Premium",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 16),
                        Text("S/ 50.00 / mes", style: TextStyle(fontSize: 22)),
                        Container(
                          margin: EdgeInsets.only(top: 32),
                          child: Column(
                            children: [
                              Text("¿Qué incluye?",
                                  style: TextStyle(
                                      fontSize: 28,
                                      color: Colors.green,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(height: 24),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/ad.png",
                                        height: 32,
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "No más publicidad",
                                          style: TextStyle(fontSize: 24),
                                        ),
                                        Text("Disfruta de Easy Nutrition sin",
                                            style: TextStyle(fontSize: 16)),
                                        Text("anuncios en la interfaz.",
                                            style: TextStyle(fontSize: 16))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 64),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.green,
                                    shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(12)),
                                  ),
                                  onPressed: () {
                                    //
                                  },
                                  child: Container(
                                      height: 50,
                                      child: Center(
                                        child: Text(
                                          'Enviar un mensaje',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ))),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ))),
    );
  }
}
