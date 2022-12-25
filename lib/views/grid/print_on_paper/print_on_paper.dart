import 'package:cemara/views/chart.dart';
import 'package:cemara/views/grid/print_on_paper/brosura4.dart';
import 'package:cemara/views/grid/print_on_paper/brosura5.dart';
import 'package:cemara/views/grid/print_on_paper/brosura6.dart';
import 'package:cemara/views/grid/print_on_paper/flyer.dart';
import 'package:cemara/views/grid/print_on_paper/flyer21.dart';
import 'package:cemara/views/grid/print_on_paper/print_a3_bw.dart';
import 'package:cemara/views/grid/print_on_paper/print_a3_pluscolor.dart';
import 'package:cemara/views/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

import 'longprint.dart';

class PrintPaperScreen extends StatefulWidget {
  const PrintPaperScreen({super.key});

  @override
  State<PrintPaperScreen> createState() => _PrintPaperScreenState();
}

class _PrintPaperScreenState extends State<PrintPaperScreen> {
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChartPage(),
                ),
              );
            },
            icon: Icon(UniconsLine.shopping_cart_alt),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ),
              );
            },
            icon: Icon(
              UniconsLine.user_circle,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(11.0),
              decoration: BoxDecoration(
                color: Colors.tealAccent,
              ),
              height: 60,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    labelText: "Search",
                    labelStyle: GoogleFonts.roboto(
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Print On Paper",
                  style: GoogleFonts.roboto(
                    color: Colors.orangeAccent,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BrosuA4()));
                        },
                        splashColor: Colors.transparent,
                        child: Column(
                          children: [
                            Ink.image(
                              image: AssetImage(
                                  "assets/images/printonpaper/brosur.png"),
                              height: 70,
                              width: 70,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Brosur A4",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Rp 380.000",
                        style: GoogleFonts.roboto(
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PrintA3Bw(),
                            ),
                          );
                        },
                        splashColor: Colors.transparent,
                        child: Column(
                          children: [
                            Ink.image(
                              image: AssetImage(
                                  "assets/images/printonpaper/a3bw.png"),
                              height: 70,
                              width: 70,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Print A3 Black White",
                              style: GoogleFonts.roboto(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Rp 1.000",
                        style: GoogleFonts.roboto(
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PrintA3color(),
                            ),
                          );
                        },
                        splashColor: Colors.transparent,
                        child: Column(
                          children: [
                            Ink.image(
                              image: AssetImage(
                                  "assets/images/printonpaper/a3plus.png"),
                              height: 70,
                              width: 70,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Print A3 Plus Color",
                              style: GoogleFonts.roboto(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Rp 1.500",
                        style: GoogleFonts.roboto(
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LongPrint(),
                            ),
                          );
                        },
                        splashColor: Colors.transparent,
                        child: Column(
                          children: [
                            Ink.image(
                              image: AssetImage(
                                  "assets/images/printonpaper/longprint.png"),
                              height: 70,
                              width: 70,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Long Print",
                              style: GoogleFonts.roboto(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Rp 7.000",
                        style: GoogleFonts.roboto(
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Flyer10(),
                            ),
                          );
                        },
                        splashColor: Colors.transparent,
                        child: Column(
                          children: [
                            Ink.image(
                              image: AssetImage(
                                  "assets/images/printonpaper/flyer.png"),
                              height: 70,
                              width: 70,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Flyer 10 X 21",
                              style: GoogleFonts.roboto(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Rp 150.000",
                        style: GoogleFonts.roboto(
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BrosurA5(),
                            ),
                          );
                        },
                        splashColor: Colors.transparent,
                        child: Column(
                          children: [
                            Ink.image(
                              image: AssetImage(
                                  "assets/images/printonpaper/brosura5.png"),
                              height: 70,
                              width: 70,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Brosur A5",
                              style: GoogleFonts.roboto(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Rp 190.000",
                        style: GoogleFonts.roboto(
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BrosuA6(),
                            ),
                          );
                        },
                        splashColor: Colors.transparent,
                        child: Column(
                          children: [
                            Ink.image(
                              image: AssetImage(
                                  "assets/images/printonpaper/brosura6.png"),
                              height: 70,
                              width: 70,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Brosur A6",
                              style: GoogleFonts.roboto(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Rp 60.000",
                        style: GoogleFonts.roboto(
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Flyer21(),
                            ),
                          );
                        },
                        splashColor: Colors.transparent,
                        child: Column(
                          children: [
                            Ink.image(
                              image: AssetImage(
                                  "assets/images/printonpaper/flyer21x21.png"),
                              height: 70,
                              width: 70,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Flyer 21 X 21",
                              style: GoogleFonts.roboto(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Rp 380.000",
                        style: GoogleFonts.roboto(
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
