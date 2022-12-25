import 'package:cemara/views/grid/kalender/kalendar.dart';
import 'package:cemara/views/grid/print_on_paper/print_on_paper.dart';
import 'package:cemara/views/grid/sticker/sticker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
            ),
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/banner.png"),
                Text(
                  "MMT & Banner",
                  style: GoogleFonts.roboto(
                    fontSize: 6,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => kalendar()));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/calendar.png"),
                Text(
                  "Kalender",
                  style: GoogleFonts.roboto(
                    fontSize: 8,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Sticker(),
                ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/sticker.png"),
                Text(
                  "Sticker - Label",
                  style: GoogleFonts.roboto(
                    fontSize: 6,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PrintPaperScreen(),
                ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/paper.png"),
                Text(
                  "Print On Paper",
                  style: GoogleFonts.roboto(
                    fontSize: 6,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
            ),
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/image.png"),
                Text(
                  "Photography",
                  style: GoogleFonts.roboto(
                    fontSize: 7,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
            ),
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/portfolio.png"),
                Text(
                  "Pelengkap Bisnis",
                  style: GoogleFonts.roboto(
                    fontSize: 5.5,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
            ),
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/pngwing.png"),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Large Poster",
                  style: GoogleFonts.roboto(
                    fontSize: 6,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
            ),
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/print.png"),
                Text(
                  "Large Sticker",
                  style: GoogleFonts.roboto(
                    fontSize: 7,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
            ),
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/layers.png"),
                Text(
                  "All Product",
                  style: GoogleFonts.roboto(
                    fontSize: 8,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
            ),
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/offset.png"),
                Text(
                  "Offset Printing",
                  style: GoogleFonts.roboto(
                    fontSize: 6.5,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
            ),
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/packaging.png"),
                Text(
                  "Packaging",
                  style: GoogleFonts.roboto(
                    fontSize: 9,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
            ),
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/merchandise.png"),
                Text(
                  "Merchandise",
                  style: GoogleFonts.roboto(
                    fontSize: 7,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
