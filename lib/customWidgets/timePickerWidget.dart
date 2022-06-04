import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay selectedTime = TimeOfDay.now();
  String placeHolder = "hh:mm";
  _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      setState(() {
        selectedTime = timeOfDay;
      });
      placeHolder =
          selectedTime.hour.toString() + ':' + selectedTime.minute.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return (Container(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.only(right: 24.0),
        child: OutlinedButton.icon(
          onPressed: () => _selectTime(context),
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.grey),
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(2)),
            primary: Colors.grey,
          ),
          icon: Icon(
            Icons.timer_rounded,
            size: 24,
            color: Colors.grey,
          ),
          label: Text(placeHolder, textAlign: TextAlign.left),
        ),
      ),
    ));
  }
}
