import 'package:flutter/material.dart';

class AirportSelect extends StatefulWidget {
  const AirportSelect({super.key});

  @override
  State<AirportSelect> createState() => _AirportSelectState();
}

class _AirportSelectState extends State<AirportSelect> {

    final List<String> _airportNames = [
    'Heathrow Airport',
    'Gatwick Airport',
    'Manchester Airport',
    'Birmingham Airport',
    'Edinburgh Airport',
    'Glasgow Airport',
    // Add more airport names here
  ];

  String? _selectedAirport;

  @override
  Widget build(BuildContext context) {
    return Container(
              
              decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 1),
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200,
              ),
              padding: const EdgeInsets.symmetric(vertical:3, horizontal: 11),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  dropdownColor: Colors.grey.shade300,
                  isExpanded: true,
                  value: _selectedAirport,
                  hint: Text('Select an airport',style: TextStyle(color: Colors.grey.shade500),),
                  onChanged: (newValue) {
                    setState(() {
                      _selectedAirport = newValue;
                    });
                  },
                  items: _airportNames.map((airport) {
                    return DropdownMenuItem<String>(
                      value: airport,
                      child: Text(airport),
                    );
                  }).toList(),
                ),
              ),
            );
  }
}