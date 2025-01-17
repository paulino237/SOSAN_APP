import 'package:flutter/material.dart';
import 'package:sosan_signup_login/DetailsPayment/begin_payment.dart';
import 'package:sosan_signup_login/DetailsPayment/details_payment.dart';
import 'package:sosan_signup_login/HomePage/HomePage.dart';

import 'package:sosan_signup_login/Onboarding/boarding_views.dart';
import 'package:sosan_signup_login/Register%20and%20Login/Home.dart';
import 'package:sosan_signup_login/Register%20and%20Login/SignIn.dart';
import 'package:sosan_signup_login/Register%20and%20Login/Signup.dart';
import 'package:sosan_signup_login/RellVideos/HomeForVideo.dart';
import 'package:sosan_signup_login/RellVideos/player_controller.dart';
import 'package:sosan_signup_login/RellVideos/videos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeVideo(),
    );
  }
}
