import 'package:cemara/views/home/navbar_screen.dart';
import 'package:cemara/views/profile_screen.dart';
import 'package:cemara/views/chart.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../home/card_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Image.asset("assets/images/logo2.png"),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ChartPage()));
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(11.0),
              color: Colors.tealAccent,
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
                  "Kategori",
                  style: GoogleFonts.roboto(
                    color: Colors.orangeAccent,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              height: 300,
              child: CardScreen(),
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Produk Unggulan",
                  style: GoogleFonts.roboto(
                    color: Colors.orangeAccent,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          splashColor: Colors.transparent,
                          child: Column(
                            children: [
                              Ink.image(
                                image: AssetImage(
                                    "assets/images/printonpaper/npwp.png"),
                                height: 70,
                                width: 70,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "NPWP",
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
                          "Rp 20.000",
                          style: GoogleFonts.roboto(
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          splashColor: Colors.transparent,
                          child: Column(
                            children: [
                              Ink.image(
                                image: AssetImage(
                                    "assets/images/printonpaper/PFO.png"),
                                height: 70,
                                width: 70,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Print DTF(Pet Film Only)",
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
                          "Rp 70.000/m",
                          style: GoogleFonts.roboto(
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          splashColor: Colors.transparent,
                          child: Column(
                            children: [
                              Ink.image(
                                image: AssetImage(
                                    "assets/images/printonpaper/kaos anak.png"),
                                height: 70,
                                width: 70,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Kaos Anak",
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
                          "Rp 55.000",
                          style: GoogleFonts.roboto(
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
