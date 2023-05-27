import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:taxi_app/components/drawer.dart';
import 'package:taxi_app/pages/profile_page.dart';

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
      body: const Column(
        //choose an airport dropdown menu

        //choose destination

        //choose arrival date

        //choose arrival time

        //a button to confirm or book the ride

      ),
      drawer: MyDrawer(onProfileTap: goToProfile,onSignOutTap: signUserOut,),
    );
  }
}
