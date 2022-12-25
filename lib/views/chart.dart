import 'package:cemara/views/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

import 'home/navbar_screen.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({super.key});

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Image.asset("assets/images/logo2.png"),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChartPage()));
            },
            icon: Icon(UniconsLine.shopping_cart_alt),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            icon: Icon(
              UniconsLine.user_circle,
              size: 30,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(UniconsLine.shopping_cart,
            size: 170,
            color: Colors.black45,
            ),
            Text(
              "Keranjang Kosong",
              style: GoogleFonts.roboto(
                color: Colors.black45,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
