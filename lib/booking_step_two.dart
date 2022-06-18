import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'booking_step_one.dart';
import 'customWidgets/navbarBackWidget.dart';
import 'home_page.dart';
import 'view_booking.dart';

class BookingStepTwo extends StatefulWidget {
  final String name;
  final String date;
  final String startTime;
  final String endTime;
  const BookingStepTwo({Key? key, required this.name, required this.date, required this.startTime, required this.endTime}) : super(key: key);
  @override
  State<BookingStepTwo> createState() => _BookingStepTwo();
}

class _BookingStepTwo extends State<BookingStepTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 32.0, left: 24.0, right: 24.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NavbarBack(),
                  SizedBox(height: 32),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text('Reserva',
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w400)),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.wifi_tethering,
                                  size: 22,
                                  color: Colors.grey[700],
                                ),
                                SizedBox(height: 8),
                                Icon(
                                  Icons.calendar_today,
                                  size: 22,
                                  color: Colors.grey[700],
                                ),
                                SizedBox(height: 8),
                                Icon(
                                  Icons.hourglass_top,
                                  size: 22,
                                  color: Colors.grey[700],
                                ),
                                SizedBox(height: 8),
                                Icon(
                                  Icons.hourglass_bottom,
                                  size: 22,
                                  color: Colors.grey[700],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(widget.name,
                                      style: TextStyle(fontSize: 18)),
                                  SizedBox(height: 8),
                                  Text(widget.date,
                                      style: TextStyle(fontSize: 18)),
                                  SizedBox(height: 8),
                                  Text(widget.startTime,
                                      style: TextStyle(fontSize: 18)),
                                  SizedBox(height: 8),
                                  Text(widget.endTime,
                                      style: TextStyle(fontSize: 18)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 32),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Tu asesor ideal", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400)),
                      SizedBox(height: 16),
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 7),
                          )
                        ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Stack(
                            children: [
                              Image.asset('assets/iv_adviser_details.jpg',
                                  fit: BoxFit.cover),
                              Positioned(
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      left: 12.0,
                                      top: 12.0,
                                      right: 125.0,
                                      bottom: 12.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Icon(
                                                Icons.star_border_outlined,
                                                color: Colors.black,
                                                size: 16,
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Text(
                                                  '4.95 (25)',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Text('Jhony Coronel',
                                          style: TextStyle(
                                              fontSize: 28,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400)),
                                      SizedBox(height: 8),
                                      Text(
                                          'Especialista en Aumento de masa muscular',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black54)),
                                      SizedBox(height: 4),
                                      Text('S/.40.00 / hora',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400)),
                                      SizedBox(height: 30),
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Icon(
                                                Icons.people,
                                                color: Colors.black54,
                                                size: 24,
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 8.0),
                                                  child: Text(
                                                    '25 pacientes',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black87),
                                                  )),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 32),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(12)),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ViewBooking(
                                        name: widget.name,
                                        date: widget.date,
                                        startTime: widget.startTime,
                                        endTime: widget.endTime)));
                          },
                          child: Container(
                              height: 50,
                              child: Center(
                                child: Text(
                                  'Reservar',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                          )
                      )
                    ],
                  )
                ]),
          ),
        ));
  }
}
