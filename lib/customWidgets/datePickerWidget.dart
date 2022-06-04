import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime currentDate = DateTime.now();
  String placeHolder = "Selecciona la fecha";
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
    placeHolder = pickedDate!.day.toString() +
        '/' +
        pickedDate.month.toString() +
        '/' +
        pickedDate.year.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 500,
      child: OutlinedButton.icon(
        onPressed: () => _selectDate(context),
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.grey),
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(2)),
          primary: Colors.grey,
        ),
        icon: Icon(
          Icons.calendar_today,
          size: 24,
          color: Colors.green,
        ),
        label: Text(
          placeHolder,
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
