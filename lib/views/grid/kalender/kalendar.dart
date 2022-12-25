import 'package:cemara/views/chart.dart';
import 'package:cemara/views/grid/kalender/kalenderdinding32.dart';
import 'package:cemara/views/grid/kalender/kalenderdinding38.dart';
import 'package:cemara/views/grid/kalender/kalenderdinding60.dart';
import 'package:cemara/views/grid/kalender/kalendermeja.dart';
import 'package:cemara/views/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class kalendar extends StatelessWidget {
  const kalendar({super.key});

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
                  "Sticker",
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
                                  builder: (context) => Kalendermeja()));
                        },
                        splashColor: Colors.transparent,
                        child: Column(
                          children: [
                            Ink.image(
                              image: AssetImage(
                                  "assets/images/kalender/kalendermeja.png"),
                              height: 70,
                              width: 70,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Kalender\nMeja",
                              textAlign: TextAlign.center,
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
                        "Rp 16.000",
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
                                  builder: (context) => Kalenderdinding32()));
                        },
                        splashColor: Colors.transparent,
                        child: Column(
                          children: [
                            Ink.image(
                              image: AssetImage(
                                  "assets/images/kalender/kalender32x48.png"),
                              height: 70,
                              width: 70,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Kalender Dinding\n32 x 48",
                              textAlign: TextAlign.center,
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
                        "Rp 5.800",
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
                                  builder: (context) => Kalenderdinding38()));
                        },
                        splashColor: Colors.transparent,
                        child: Column(
                          children: [
                            Ink.image(
                              image: AssetImage(
                                  "assets/images/kalender/kalender38x54.png"),
                              height: 70,
                              width: 70,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Kalender Dinding\n38 x 54",
                              textAlign: TextAlign.center,
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
                        "Rp 7.500",
                        style: GoogleFonts.roboto(
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
                                  builder: (context) => Kalenderdinding60()));
                        },
                        splashColor: Colors.transparent,
                        child: Column(
                          children: [
                            Ink.image(
                              image: AssetImage(
                                  "assets/images/kalender/kalender40x60.png"),
                              height: 70,
                              width: 70,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Kalender Dinding\n40 x 60",
                              textAlign: TextAlign.center,
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
                        "Rp 5.200",
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
