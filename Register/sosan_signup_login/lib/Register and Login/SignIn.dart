import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sosan_signup_login/Constante.dart';
import 'package:sosan_signup_login/HomePage/HomePage.dart';
import 'package:sosan_signup_login/Register%20and%20Login/Signup.dart';

class SignIn extends StatelessWidget {
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
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: [
                      SizedBox(
                        height: 50,
                      ),
                      Image(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        fit: BoxFit.contain,
                        image: const AssetImage("assets/images/SOSAN-Logo.png"),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text("Welcome Back!",
                          style: GoogleFonts.montserrat(
                              fontSize: 28, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                border: const Border(
                                    top: BorderSide(
                                        color: Colors.blue,
                                        width: 5.0,
                                        style: BorderStyle.solid)),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Image(
                                width: MediaQuery.of(context).size.width,
                                height: 150,
                                fit: BoxFit.contain,
                                image: const AssetImage(
                                    "assets/images/facebook.png"),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                border: const Border(
                                    top: BorderSide(
                                        color: Colors.blue,
                                        width: 5.0,
                                        style: BorderStyle.solid)),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Image(
                                width: MediaQuery.of(context).size.width,
                                height: 150,
                                fit: BoxFit.contain,
                                image: const AssetImage(
                                    "assets/images/twitter.png"),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                border: const Border(
                                    top: BorderSide(
                                        color: Colors.blue,
                                        width: 5.0,
                                        style: BorderStyle.solid)),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Image(
                                width: MediaQuery.of(context).size.width,
                                height: 150,
                                fit: BoxFit.contain,
                                image: const AssetImage(
                                    "assets/images/google.jpg"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Enter Email or Number",
                          hintText: "",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0)),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Enter Your PassWord",
                          hintText: "**********",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0)),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(
                            width: 400, height: 50),
                        child: ElevatedButton(
                          child: Text(
                            "log in".toUpperCase(),
                            style: TextStyle(fontSize: 18),
                          ),
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFF3AB7FC)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: BorderSide(color: Colors.white))),
                          ),
                          onPressed: () => null,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Save Creditials",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Constante.vert),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Forgot Password ?",
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: ' NEW TO SOSAN ? ',
                            style: GoogleFonts.montserrat(color: Colors.black)),
                        TextSpan(
                            text: 'SIGN UP NOW',
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()),
                                );
                              },
                            style: TextStyle(color: Constante.vert)),
                      ]))
                    ])),
              )
            ],
          ),
        ));
  }
}
