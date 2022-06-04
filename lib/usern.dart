import 'package:flutter/material.dart';
import 'booking_step_one.dart';
import 'customWidgets/navbarWidget.dart';
import 'premium_info.dart';

class HomePageN extends StatefulWidget {
  const HomePageN({Key? key}) : super(key: key);
  @override
  State<HomePageN> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageN> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex) {
        case 0:
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePageN()));
          break;
        case 1:
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => BookingStepOne()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                child: Navbar(),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'En esta sección podras ver las reservas de tus pacientes',
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Selecciona ver reservaciones',
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0),
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
                              builder: (context) => BookingStepOne()));
                    },
                    child: Container(
                        height: 50,
                        child: Center(
                          child: Text(
                            'Ver reservaciones',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        ))),
              ),
              SizedBox(height: 32),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Empezando el mes',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.w500),
                        ),
                        Text(
                            'Siempre con buen ánimo y fortaleza.',
                            style: TextStyle(fontSize: 16)),
                        SizedBox(height: 24),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Stack(
                            children: [
                              ColoredBox(
                                color: Colors.black.withOpacity(1),
                                child: Image.asset(
                                  'assets/iv_tip.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                // The Positioned widget is used to position the text inside the Stack widget
                                bottom: 5,

                                child: Container(
                                  // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                                  width: 300,
                                  padding: const EdgeInsets.only(
                                      left: 25, bottom: 5),
                                  child: const Text(
                                    'Estimado paciente cuida tus alimentos usando las guías de medición como tus manos.',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32),
              Container(
                height: 50,
                width: 500,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                  child: OutlinedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Premium()));
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.green),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(12)),
                      primary: Colors.green,
                    ),
                    icon: Icon(Icons.wb_sunny, size: 18),
                    label: Text("Convierte a Premium"),
                  ),
                ),
//D:\Universidad\Ciclo 2022-01\Aplicaciones para dispositivos moviles\AndroidStudioProjects\reservar_cita\lib\home_page.dart
              ),
              SizedBox(height: 32),
              Container(
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        children: [
                          Image.asset('assets/iv-training.webp'),
                        ],
                      ),
                    ),
                  ),
                ),
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
