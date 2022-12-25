import 'package:cemara/views/authentication/register_screen.dart';
import 'package:cemara/views/home/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const admin = const {
  'admin@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
};

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 386,
              width: 372,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 227, 227),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Image.asset(
                    "assets/images/logo2.png",
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  TextField(
                    controller: emailcontroller,
                    decoration: InputDecoration(
                      constraints: BoxConstraints(
                        maxWidth: 300,
                      ),
                      hintText: "hunter14@gmail.com",
                      hintStyle: GoogleFonts.roboto(color: Colors.teal),
                      labelText: "Enter your email",
                      labelStyle: GoogleFonts.roboto(
                        color: Colors.orange,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.orange,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.orange,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    controller: passwordcontroller,
                    obscureText: true,
                    obscuringCharacter: '•',
                    decoration: InputDecoration(
                      constraints: BoxConstraints(
                        maxWidth: 300,
                      ),
                      labelText: "Enter your assword",
                      labelStyle: GoogleFonts.roboto(
                        color: Colors.orange,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.orange,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.orange,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 249, 246, 210)),
                      fixedSize: MaterialStateProperty.all(
                        Size.fromWidth(300),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () async {
                      if (FirebaseAuth.instance.currentUser == null) {
                        try {
                          await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: emailcontroller.text,
                                  password: passwordcontroller.text);
                        } on FirebaseAuthException catch (e) {
                          showNotification(context, e.message.toString());
                        }
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      }
                    },
                    child: Text(
                      "Login",
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Belum punya akun?",
                        style: GoogleFonts.roboto(
                          color: Color.fromARGB(255, 255, 81, 81),
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Register !",
                          style: GoogleFonts.roboto(
                            color: Colors.black45,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showNotification(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.orange, content: Text(message.toString())));
  }
}
