import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

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

class ConsultingList{
  String name;
  int index;
  ConsultingList({required this.name, required this.index});
}

class _BookingStepOne extends State<BookingStepOne> {
  String radioItem = 'Nutrición clínica';
  int id = 1;
  List<ConsultingList> cList = [
    ConsultingList(name: "Nutrición clínica", index: 1),
    ConsultingList(name: "Nutrición para aumento de masa muscular", index: 2),
    ConsultingList(name: "Nutrición para bajar de peso", index: 3),
    ConsultingList(name: "Sobrepeso y obesidad", index: 4),
  ];
  // form
  TextEditingController dateinput = TextEditingController();
  TextEditingController startdate = TextEditingController();
  TextEditingController enddate = TextEditingController();
  String name = '';
  String date = '';
  String startTime = '';
  String endTime = '';
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex) {
        case 0:
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
          break;
        case 1:
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => BookingStepOne()));
      }
    });
  }

  @override
  void initState() {
    dateinput.text = "";
    startdate.text = "";
    enddate.text = "";
    super.initState();
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
                          )))),
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
                      Column(
                        children:
                          cList.map((data) => RadioListTile(
                            title: Text(data.name),
                            value: data.index,
                            groupValue: id,
                            onChanged: (val){
                              setState(() {
                                radioItem = data.name;
                                id = data.index;
                                print(radioItem);
                              });
                            },)).toList()
                        ,
                      )
                      //RadioGroupConsulting()
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
                      TextField(
                        controller:
                            dateinput, //editing controller of this TextField
                        decoration: InputDecoration(
                            icon: Icon(Icons.calendar_today),
                            labelText: "Selecciona la fecha"),
                        readOnly: true,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2101));

                          if (pickedDate != null) {
                            print(pickedDate);
                            String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                            print(formattedDate);

                            setState(() {
                              dateinput.text = formattedDate;
                            });
                          } else {
                            print("Date is not selected");
                          }
                        },
                      )
                      //DatePicker(),
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
                        child: TextField(
                          controller: startdate,
                          decoration: InputDecoration(
                              icon: Icon(Icons.timer_rounded),
                              labelText: "Hora de inicio"),
                          readOnly: true,
                          onTap: () async {
                            TimeOfDay? timeOfDay = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now(),
                              initialEntryMode: TimePickerEntryMode.dial,
                            );
                            if (timeOfDay != null) {
                              setState(() {
                                String formattedTime =
                                    timeOfDay.hour.toString() +
                                        ':' +
                                        timeOfDay.minute.toString();
                                startdate.text = formattedTime;
                              });
                            }
                          },
                        )
                        //child: TimePicker(),
                        ),
                    Expanded(
                        flex: 5,
                        child: TextField(
                          controller: enddate,
                          decoration: InputDecoration(
                              icon: Icon(Icons.timer_rounded),
                              labelText: "Hora de fin"),
                          readOnly: true,
                          onTap: () async {
                            TimeOfDay? timeOfDay = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now(),
                              initialEntryMode: TimePickerEntryMode.dial,
                            );
                            if (timeOfDay != null) {
                              setState(() {
                                String formattedTime =
                                    timeOfDay.hour.toString() +
                                        ':' +
                                        timeOfDay.minute.toString();
                                enddate.text = formattedTime;
                              });
                            }
                          },
                        ))
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
                        formValues();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BookingStepTwo(
                                    name: radioItem,
                                    date: dateinput.text,
                                    startTime: startdate.text,
                                    endTime: enddate.text)));
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
                          )))),
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

  formValues() {
   // var bookingInfo =
        //BookingInfo('a', dateinput.text, startdate.text, enddate.text);
    //print(bookingInfo.);
    print('Fecha de cita: ${dateinput.text}');
    print('Hora de inicio: ${startdate.text}');
    print('Hora de fin: ${enddate.text}');
  }
}
