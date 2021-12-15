// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwallpaperaccess.com%2Fkai-beyblade&psig=AOvVaw05RWAHM8Bztf4FSZZ_drn3&ust=1639632364689000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCJi6j96I5fQCFQAAAAAdAAAAABAD";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Pranjul Chaurasiya"),
                accountEmail: Text("pranjul.19641@knit.ac.in"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            ListTile(
              leading: Icon(
                Icons.mail,
                color: Colors.white,
              ),
              // ignore: prefer_const_constructors
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
