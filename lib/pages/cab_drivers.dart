import 'package:flutter/material.dart';

class CabDrivers extends StatefulWidget {
  const CabDrivers({super.key});

  @override
  State<CabDrivers> createState() => CCabDriversState();
}

class CCabDriversState extends State<CabDrivers> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Cab Drivers'),);
  }
}