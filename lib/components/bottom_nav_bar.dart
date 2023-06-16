import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const  EdgeInsets.all(10),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey[700],
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 10,
        haptic: true,
        //tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
        //tabBorder: Border.all(color: Colors.grey,), // tab button border
        //tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
        gap: 8,
        onTabChange: (value) => onTabChange!(value), 
        padding: const EdgeInsets.all(20),
        tabs: const [
          GButton(
            icon: Icons.hail,
            text: 'Booking',
          ),
          GButton(
            icon: Icons.local_taxi,
            text: 'Drivers',
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: 'My rides',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          ),
          
        ],
      ),
    );
  }
}
