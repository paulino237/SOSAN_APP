import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sosan_signup_login/Constante.dart';
import 'package:sosan_signup_login/HomePage/HomePage.dart';
import 'package:sosan_signup_login/Register%20and%20Login/SignIn.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //we omitted the brackets '{}' and are using fat arrow '=>' instead, this is dart syntax
  @override
  Widget build(BuildContext context) {
    bool? Ischecked = true;
    void _value1Changed(bool value) {
      Ischecked = false;
    }

    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              SvgPicture.asset(
                'assets/head_frame.svg',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                alignment: AlignmentDirectional.topStart,
              ),
              Center(
                child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(children: [
                      SizedBox(
                        height: 20,
                      ),
                      Image(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        fit: BoxFit.contain,
                        image: const AssetImage("assets/images/SOSAN-Logo.png"),
                      ),
                      // Text("Welcome Back!",
                      //     style: TextStyle(
                      //         fontSize: 28, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 30,
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
                                        color: Constante.bleu,
                                        width: 5.0,
                                        style: BorderStyle.solid)),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Image(
                                width: MediaQuery.of(context).size.width,
                                height: 100,
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
                                        color: Constante.bleu,
                                        width: 5.0,
                                        style: BorderStyle.solid)),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Image(
                                width: MediaQuery.of(context).size.width,
                                height: 100,
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
                                        color: Constante.bleu,
                                        width: 5.0,
                                        style: BorderStyle.solid)),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Image(
                                width: MediaQuery.of(context).size.width,
                                height: 100,
                                fit: BoxFit.contain,
                                image: const AssetImage(
                                    "assets/images/google.jpg"),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Enter Username",
                          hintText: "Sosan",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
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
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Enter Password",
                          hintText: "******",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0)),
                          fillColor: Colors.grey,
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Confirm Your Password",
                          hintText: "******",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.0)),
                          fillColor: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ConstrainedBox(
                        constraints:
                            BoxConstraints.tightFor(width: 400, height: 50),
                        child: ElevatedButton(
                          child: Text(
                            "sign up".toUpperCase(),
                            style: TextStyle(fontSize: 18),
                          ),
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Constante.bleu),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: BorderSide(color: Constante.bleu))),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(children: [
                        Row(
                          children: [
                            Checkbox(
                              value: true,
                              side: const BorderSide(
                                color: Constante.vert,
                                width: 5.0,
                                style: BorderStyle.solid,
                              ),
                              onChanged: (bool? value) {
                                setState(() {
                                  value = false;
                                });
                              },
                              activeColor: Colors.white,
                              checkColor: Constante.vert,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'I agree with ',
                                      style: GoogleFonts.montserrat()),
                                  TextSpan(
                                    text: 'Terms and conditions \n',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        decoration: TextDecoration.underline,
                                        color: Constante.vert),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // Action to do
                                      },
                                  ),
                                  TextSpan(
                                      text: '& ',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.black,
                                      )),
                                  TextSpan(
                                    text: 'Privacy Policy',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        decoration: TextDecoration.underline,
                                        color: Constante.vert),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // Action to do
                                      },
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ]),
                      SizedBox(
                        height: 20,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: ' Already Have An Account ? ',
                            style: GoogleFonts.montserrat(color: Colors.black)),
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
                            style:
                                GoogleFonts.montserrat(color: Constante.vert)),
                      ]))
                    ])),
              )
            ],
          ),
        ));
  }
}
