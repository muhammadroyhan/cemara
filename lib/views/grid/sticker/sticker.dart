import 'package:cemara/views/chart.dart';
import 'package:cemara/views/grid/sticker/stickerhvs.dart';
import 'package:cemara/views/grid/sticker/stickervinyld.dart';
import 'package:cemara/views/grid/sticker/stickervinylg.dart';
import 'package:cemara/views/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class Sticker extends StatelessWidget {
  const Sticker({super.key});

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
                                  builder: (context) => Stickerhvs()));
                        },
                        splashColor: Colors.transparent,
                        child: Column(
                          children: [
                            Ink.image(
                              image: AssetImage(
                                  "assets/images/sticker/stickerhvs.png"),
                              height: 70,
                              width: 70,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Sticker HVS",
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
                        "Rp 3.200",
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
                                  builder: (context) => Stickervinylg()));
                        },
                        splashColor: Colors.transparent,
                        child: Column(
                          children: [
                            Ink.image(
                              image: AssetImage(
                                  "assets/images/sticker/stickervinylg.png"),
                              height: 70,
                              width: 70,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Sticker Vinyl Glossy",
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
                        "Rp 7.300",
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
                                  builder: (context) => Stickervinyld()));
                        },
                        splashColor: Colors.transparent,
                        child: Column(
                          children: [
                            Ink.image(
                              image: AssetImage(
                                  "assets/images/sticker/stickervinyld.png"),
                              height: 70,
                              width: 70,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Sticker Vinyl Doff",
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
                        "Rp 7.300",
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
