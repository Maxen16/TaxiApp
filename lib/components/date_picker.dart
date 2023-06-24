import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => DatePickerState();
}

class DatePickerState extends State<DatePicker> {
  //final TextEditingController _datepickcontroller = TextEditingController();

  //datetime variable
  DateTime _dateTime = DateTime.now();

  //date picker method
  void _showDatePicker() {
    showDatePicker(
        context: context,
        initialEntryMode: DatePickerEntryMode.calendarOnly,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2100)).then((value){
          setState(() {
            _dateTime = value!;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1),
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
      ),
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 11),
      child: TextField(
        readOnly: true,
        //controller: _datepickcontroller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 15),
          border: InputBorder.none,
          hintText: DateFormat('dd-MM-yyyy').format(_dateTime),
          hintStyle: const TextStyle(color: Colors.black),
          suffixIcon: InkWell(
            onTap: _showDatePicker,
            child: Icon(
              Icons.calendar_month_rounded,
              color: Colors.grey.shade700,
            ),
          ),
        ),
      ),
    );
  }
}
