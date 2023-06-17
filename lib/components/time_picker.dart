import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});
  @override
  State<TimePicker> createState() => TimePickerState();
}

class TimePickerState extends State<TimePicker> {
  //final TextEditingController _datepickcontroller = TextEditingController();

  //time variable
  TimeOfDay _timeOfDay = TimeOfDay.now();
  

  //time picker method
  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay = value!;
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
          hintText: _timeOfDay.format(context).toString(),
          hintStyle: const TextStyle(color: Colors.black),
          suffixIcon: InkWell(
            onTap: _showTimePicker,
            child: Icon(
              Icons.schedule_rounded,
              color: Colors.grey.shade700,
            ),
          ),
        ),
      ),
    );
  }
}
