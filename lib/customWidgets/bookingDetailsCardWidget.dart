import 'package:easy_nutrition/view_booking.dart';
import 'package:easy_nutrition/view_booking_list.dart';
import 'package:flutter/material.dart';


class BookingDetailsCard extends StatelessWidget {


  BookingDetailsCard({required this.active});
  final bool active;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => route()));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 25.0),
        height: 130.0,
        decoration: BoxDecoration(
          border: Border.all(
              color: cardColor(),
              style: BorderStyle.solid,
              width: 2.0
          ),
          borderRadius: BorderRadius.circular(24),
          color: cardBackgroundColor(),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 20.0, bottom: 20.0),
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 85,
                    width: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),

                        color: miniCardColor()
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Column(
                        children: [
                          Text("Vie",
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,
                              color: textColor())),
                          Text("06",
                              style: TextStyle(fontSize: 32,fontWeight: FontWeight.w400,color: textColor() ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left:32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Jhony Coronel",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
                    SizedBox(height: 6),
                    Text("Inicio:   04:00 PM",
                        style: TextStyle(fontSize: 18)),
                    SizedBox(height: 4),
                    Text("Fin:      05:00 PM",
                        style: TextStyle(fontSize: 18))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  cardColor() {
    if(active){
      return Colors.green;
    }
    return Colors.grey[400];
  }
  cardBackgroundColor() {
    if(active){
      return Colors.white;
    }
    return Colors.grey[400];
  }
  miniCardColor() {
    if(active){
      return Colors.green;
    }
    return Colors.grey[500];
  }

  textColor() {
    if(active){
      return Colors.black;
    }
    return Colors.grey[600];
  }

  route() {
    if(active){
      return Container();
    }
    return ViewBookingList();
  }

}
