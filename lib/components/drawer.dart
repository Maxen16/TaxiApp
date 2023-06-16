import 'package:flutter/material.dart';
import 'package:taxi_app/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  final void Function()? onAboutTap;
  final void Function()? onSignOutTap;
  const MyDrawer({super.key, required this.onAboutTap, required this.onSignOutTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        //header
        Column(
          children:[
          const DrawerHeader(
          child: Icon(
            Icons.person,
            color: Colors.white,
            size: 64,
          ),
        ),
        

        //home list tile

        MyListTile(icon: Icons.home, text: 'H O M E', onTap: () => Navigator.pop(context),),

        //About list tile
        MyListTile(icon: Icons.info, text: 'A B O U T', onTap: onAboutTap,),

      ],),
        //logout list tile
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: MyListTile(icon: Icons.logout, text: 'L O G O U T', onTap: onSignOutTap,),
        ),
      ]),
    );
  }
}
