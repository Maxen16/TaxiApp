import 'package:flutter/material.dart';
import 'package:taxi_app/components/airport_selection.dart';
import 'package:taxi_app/components/date_picker.dart';
import 'package:taxi_app/components/my_button.dart';
import '../components/my_textfield.dart';
import '../components/time_picker.dart';




class BookRide extends StatefulWidget {
  const BookRide({super.key});

  @override
  BookRideState createState() => BookRideState();
}

class BookRideState extends State<BookRide> {

  final destinationTextController = TextEditingController();

  // String? _selectedAirport;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              //A taxi image
              const SizedBox(height: 8.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('lib/images/Taxi.png', width: 200,height: 100,),
                ],
              ),
              const SizedBox(height: 15.0),

              //Airport selection
              const Text(
                'Select Airport:',
                style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500,),
              ),
              const SizedBox(height: 8.0),
              const AirportSelect(),
              
              const SizedBox(height: 10.0),
              // Text(
              //   'Selected Airport: ${_selectedAirport ?? 'None'}',
              //   style: const TextStyle(fontSize: 16.0),
              // ),
        
        
              // Destination selection
              const Text(
                'Select Destination:',
                style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500,),
              ),
              const SizedBox(height: 8.0),
              MyTextField(
                obscureText: false,
                controller: destinationTextController,
                hintText: 'Destination',
                horizontalpadding: 0.0,
                ),
              const SizedBox(height: 8.0),
        
              // Arrival Date
              const Text(
                'Arrival Date:',
                style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500,),
              ),
              const SizedBox(height: 8.0),
              const DatePicker(),
              const SizedBox(height: 8.0),
        
              // Arrival Time
              const Text(
                'Arrival Time:',
                style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500,),
              ),
              const SizedBox(height: 8.0),
              const TimePicker(),
              
              // Request ride button
              const SizedBox(height: 30.0),
              MyButton(onTap: () {}, text: 'Request Ride', horizontalpadding: 0.0,)
        
        
        
            ],
          ),
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
