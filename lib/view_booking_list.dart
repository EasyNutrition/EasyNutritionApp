import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customWidgets/bookingDetailsCardWidget.dart';
import 'customWidgets/navbarBackWidget.dart';

class ViewBookingList extends StatefulWidget{
  const ViewBookingList({Key? key}) : super(key:key);
  @override
  State<ViewBookingList> createState() => _ViewBookingList ();
}

class _ViewBookingList extends State<ViewBookingList> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(top:32.0, left: 24.0, right: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NavbarBack(),
                SizedBox(height: 32.0),
                Text("Mis reservas",
                      style: TextStyle(fontSize: 32)),
                Text("Estas son tus reservas realizadas el último mes",
                    style: TextStyle(fontSize: 16)),
                SizedBox(height: 32.0),
                Text("Mayo", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300)),
                SizedBox(height: 16.0),
                BookingDetailsCard(active: true),
                BookingDetailsCard(active: false),
                Text("Abril", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300)),
                SizedBox(height: 16.0),
                BookingDetailsCard(active: false)
              ],
            ),
        ),
      ),
    );
  }
}