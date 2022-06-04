import 'package:flutter/material.dart';

class NavbarBack extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _NavBarBackState();
}

class _NavBarBackState extends State<NavbarBack>{
  @override
  Widget build(BuildContext context){
    return Container(
      child:Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_outlined),
            color: Colors.indigoAccent,
            iconSize: 32,
          ),

          Column(
            children: [
              Row(
                children: [
                  Text(
                    'Hola, ',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'Roberto',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 24),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'Paciente',
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    ' | ',
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    'Plan Free',
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ],
          ),
          Align(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 115.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications),
                    iconSize: 32,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}