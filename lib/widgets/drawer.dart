// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://imgs.search.brave.com/BoV23anm9MI1BTthGMEn6AWOuRxtlLLNyX0kbw8xjxc/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXZlLmNv/bS93cC93cDQwODIw/NzYuanBn";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              color: Colors.deepPurple,
              child: DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Yash Nandwani",
                      style: TextStyle(color: Colors.white)),
                  accountEmail: Text("yashnandwani47@gmail.com",
                      style: TextStyle(color: Colors.white)),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),

                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                  ),
                  // No additional decoration to keep the color same
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle the tap
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Contact",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle the tap
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.book,
                color: Colors.white,
              ),
              title: Text(
                "About",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle the tap
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.dot_square,
                color: Colors.white,
              ),
              title: Text(
                "More",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle the tap
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.person,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle the tap
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.settings,
                color: Colors.white,
              ),
              title: Text(
                "Settings",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle the tap
              },
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(
                CupertinoIcons.arrow_right_circle,
                color: Colors.white,
              ),
              title: Text(
                "Logout",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle the tap
              },
            ),
          ],
        ),
      ),
    );
  }
}
