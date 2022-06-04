import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _NavBarState();
}

class _NavBarState extends State<Navbar>{
  @override
  Widget build(BuildContext context){
    return Container(
      child:Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/iv_user.jpg', height: 40)),
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
                  padding: const EdgeInsets.only(left: 120.0),
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