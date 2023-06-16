import 'package:flutter/material.dart';

import '../components/my_textfield.dart';



class BookRide extends StatefulWidget {
  const BookRide({super.key});

  @override
  BookRideState createState() => BookRideState();
}

class BookRideState extends State<BookRide> {
  final List<String> _airportNames = [
    'Heathrow Airport',
    'Gatwick Airport',
    'Manchester Airport',
    'Birmingham Airport',
    'Edinburgh Airport',
    'Glasgow Airport',
    // Add more airport names here
  ];
  final destinationTextController = TextEditingController();

  String? _selectedAirport;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Select Airport:',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            Container(
              
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
            ),
            const SizedBox(height: 10.0),
            // Text(
            //   'Selected Airport: ${_selectedAirport ?? 'None'}',
            //   style: const TextStyle(fontSize: 16.0),
            // ),

            const Text(
              'Select Destination:',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            MyTextField(
              obscureText: false,
              controller: destinationTextController,
              hintText: 'Destination',
              horizontalpadding: 0.0,
              ),


          ],
        ),
      ),
    );
  }
}





// class BookRide extends StatefulWidget {
//   const BookRide({super.key});

//   @override
//   State<BookRide> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<BookRide> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//       // Airport to choose from dropdown menu

//       // Destination address

//       // Arrival date

//       // Arrival time 

//       // Request ride

//       ],
//     );
//   }
// }



/*
class AirportSearchScreen extends StatefulWidget {
  @override
  _AirportSearchScreenState createState() => _AirportSearchScreenState();
}

class _AirportSearchScreenState extends State<AirportSearchScreen> {
  TextEditingController _searchController = TextEditingController();
  List<String> _airportNames = [
    'John F. Kennedy International Airport',
    'Los Angeles International Airport',
    'London Heathrow Airport',
    'Dubai International Airport',
    'Beijing Capital International Airport',
    // Add more airport names here
  ];
  List<String> _searchResults = [];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    String searchTerm = _searchController.text.trim().toLowerCase();
    List<String> results = [];

    if (searchTerm.isNotEmpty) {
      results = _airportNames
          .where((airport) => airport.toLowerCase().contains(searchTerm))
          .toList();
    }

    setState(() {
      _searchResults = results;
    });
  }

@override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Airport Search'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search Airport',
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _searchResults.length,
                itemBuilder: (context, index) {
                  final airportName = _searchResults[index];

                  return ListTile(
                    title: Text(airportName),
                    onTap: () {
                      // Handle selection logic here
                      print('Selected Airport: $airportName');
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/