import 'package:cemara/views/chart.dart';
import 'package:cemara/views/profile_screen.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:google_fonts/google_fonts.dart';

class Flyer10 extends StatefulWidget {
  const Flyer10({super.key});

  @override
  State<Flyer10> createState() => _Flyer10State();
}

class _Flyer10State extends State<Flyer10> {
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
          mainAxisAlignment: MainAxisAlignment.center,
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
            Card(
              child: Image.asset(
                "assets/images/printonpaper/flyer.png",
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Flyer 10x21",
                  style: GoogleFonts.roboto(
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.check,
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Tersedia beberapa pilihan bahan",
                      style: GoogleFonts.roboto(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.check,
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Ukuran 10 x 21",
                      style: GoogleFonts.roboto(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.check,
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Isi Per Rim (500 Lembar)",
                      style: GoogleFonts.roboto(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.check,
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Cetak Full Color",
                      style: GoogleFonts.roboto(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.check,
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Dicetak menggunakan mesin teknologi\nterkini",
                      style: GoogleFonts.roboto(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.check,
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Estimasi produksi tergantung dari waktu yg\ndi pilih",
                      style: GoogleFonts.roboto(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.check,
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Estimasi juga mengacu pada jumlah pesanan.",
                      style: GoogleFonts.roboto(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Select Option",
                      style: GoogleFonts.roboto(
                        fontSize: 24,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 5,
                  color: Colors.tealAccent,
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Column(
                children: [
                  DropdownSearch<String>(
                    popupProps: PopupProps.menu(
                      fit: FlexFit.tight,
                      showSelectedItems: true,
                    ),
                    items: [
                      'HVS 100',
                      'Art Paper 120',
                      'Art Paper 150',
                      'Art Carton 210'
                    ],
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: "Bahan",
                        hintText: "country in menu mode",
                      ),
                    ),
                    onChanged: print,
                    selectedItem: "HVS 100",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DropdownSearch<String>(
                    popupProps: PopupProps.menu(
                      fit: FlexFit.tight,
                      showSelectedItems: true,
                    ),
                    items: [
                      "1 Muka",
                      "2 Muka",
                    ],
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: "Cetak Sisi",
                        hintText: "country in menu mode",
                      ),
                    ),
                    onChanged: print,
                    selectedItem: "1 Muka",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Jumlah",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    readOnly: true,
                    decoration: InputDecoration(
                        labelText: "Harga Satuan",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Catatan",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Upload Image",
                  style: GoogleFonts.roboto(
                    fontSize: 24,
                    color: Colors.orangeAccent,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 5,
              color: Colors.tealAccent,
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.upload_file,
                        size: 60,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "File yang diijinkan jpg, jpeg, png, tiff, bmp, rar, zip, 7z, tif, ps, psd, cdr, ai, id, pdf dan Max Ukuran File 50 MB. Jika file lebih dari satu silahkan jadikan satu dengan format Zip atau Rar",
                    maxLines: 4,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                  Size.fromWidth(120),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 249, 246, 210)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChartPage()));
              },
              child: Text(
                "Order",
                style: GoogleFonts.roboto(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
