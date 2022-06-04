import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'booking_step_two.dart';
import 'customWidgets/datePickerWidget.dart';
import 'customWidgets/navbarWidget.dart';
import 'customWidgets/radioGroupConsulting.dart';
import 'customWidgets/timePickerWidget.dart';
import 'home_page.dart';
import 'view_booking_list.dart';

class BookingStepOne extends StatefulWidget {
  const BookingStepOne({Key? key}) : super(key: key);
  @override
  State<BookingStepOne> createState() => _BookingStepOne();
}

class _BookingStepOne extends State<BookingStepOne> {

  int _selectedIndex = 1;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex){
        case 0:
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomePage()));
          break;
        case 1:
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BookingStepOne()));

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 32.0, left: 24.0, right: 24.0),
          child: Column(
            children: [
              Navbar(),
              SizedBox(height: 32),
              Container(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(12)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ViewBookingList()));
                      },
                      child: Container(
                          height: 50,
                          child: Center(
                            child: Text(
                              'Ver mis reservas',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          )
                      )
                  )
              ),
              SizedBox(height: 32),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Reserva',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Ingresa tus preferencias para la reserva y encuentra a tu nutricionista ideal según tus objetivos',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 48),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tipo de asesoría',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 8),
                      RadioGroupConsulting()
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '¿Para cuándo sería la reserva?',
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 8),
                      DatePicker(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Text("Hora de Inicio",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.w400)),
                    ),
                    Expanded(
                      flex: 5,
                      child: Text("Hora de Fin",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.w400)),
                    )
                  ],
                ),
              ),
              SizedBox(height: 8),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: TimePicker(),
                    ),
                    Expanded(
                      flex: 5,
                      child: TimePicker(),
                    )
                  ],
                ),
              ),
              SizedBox(height: 32),
              Container(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(12)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BookingStepTwo()));
                      },
                      child: Container(
                          height: 50,
                          child: Center(
                            child: Text(
                              'Encontrar a mi nutricionista',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                          )
                      )
                  )
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: 'Reserva',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Ajustes',
            backgroundColor: Colors.green,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.grey[700],
        onTap: _onItemTapped,

      ),
    );
  }
}
