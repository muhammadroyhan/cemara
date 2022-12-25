import 'package:cemara/views/authentication/login_screen.dart';
import 'package:cemara/views/history_screen.dart';
import 'package:cemara/views/home/home_screen.dart';
import 'package:cemara/views/chart.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            height: 80,
            child: Image.asset(
              "assets/images/logo2.png",
            ),
          ),
          Container(
            height: 10,
            color: Colors.tealAccent,
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  leading: Icon(
                    Icons.home,
                  ),
                  title: Text(
                    "Dashboard",
                    style: GoogleFonts.roboto(),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChartPage()));
                  },
                  leading: Icon(
                    UniconsLine.shopping_cart_alt,
                  ),
                  title: Text(
                    "Order",
                    style: GoogleFonts.roboto(),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HistoryScreen()));
                  },
                  leading: Icon(
                    Icons.history,
                  ),
                  title: Text(
                    "History Order",
                    style: GoogleFonts.roboto(),
                  ),
                ),
                ListTile(
                  onTap: () {
                    FirebaseAuth.instance.signOut().then((value) {
                      print("Signed Out");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    });
                  },
                  leading: Icon(
                    Icons.logout,
                  ),
                  title: Text(
                    "Log Out",
                    style: GoogleFonts.roboto(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
