import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:taxi_app/components/drawer.dart';
import 'package:taxi_app/pages/book_ride.dart';
import 'package:taxi_app/pages/cab_drivers.dart';
import 'package:taxi_app/pages/my_ride.dart';
import 'package:taxi_app/pages/profile_page.dart';

import '../components/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //signout user
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

//navigate to profile page
void goToProfile(){
  //pop menu drawer
  Navigator.pop(context);
  // go to new profile page
  Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProfilePage(),),);
}

//this is selected index to control navigation bar
int _selectedIndex = 0;

//this method will update our selected index,when user tap on bottom bar
void navigateBottomBar(int index){
  setState(() {
    _selectedIndex = index;
  });
}

final List<Widget> _pages =[
  //book my ride home page
  const BookRide(),

  //cab drivers page
  const CabDrivers(),

  //My Ride Page
  const MyRide(),

];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('HomePage'),
        //action button removed cause it is in drawer also
         
        // actions: [
          //sign out button
          // IconButton(onPressed: signUserOut, icon: const Icon(Icons.logout)),
        // ],
        backgroundColor: Colors.grey[900],
      ),
      body: _pages[_selectedIndex],
      drawer: MyDrawer(onProfileTap: goToProfile,onSignOutTap: signUserOut,),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
