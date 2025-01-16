import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sosan_signup_login/Constante.dart';
import 'package:sosan_signup_login/Register%20and%20Login/SignIn.dart';
import 'package:sosan_signup_login/Register%20and%20Login/Signup.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Image(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      fit: BoxFit.contain,
                      image: const AssetImage("assets/images/SOSAN-Logo.png"),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Image.asset(
                      'assets/4.jpg',
                      width: 242.69,
                      height: 332.22,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 10.0),
                      child: Center(
                        child: Text(
                          "Empower your health journey.",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Thousands of People are using SOSAN  ",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ConstrainedBox(
                      constraints:
                          BoxConstraints.tightFor(width: 400, height: 50),
                      child: ElevatedButton(
                        child: Text(
                          "sign up".toUpperCase(),
                          style: TextStyle(fontSize: 14),
                        ),
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Constante.bleu),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      side: BorderSide(color: Constante.bleu))),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      const TextSpan(
                          text: ' Already have an account ? ',
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: 'LOG IN',
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignIn()),
                              );
                            },
                          style: TextStyle(color: Constante.vert)),
                    ]))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
