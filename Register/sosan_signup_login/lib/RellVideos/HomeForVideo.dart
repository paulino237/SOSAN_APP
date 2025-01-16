import 'package:flutter/material.dart';
import 'package:sosan_signup_login/RellVideos/player_controller.dart';

class HomeVideo extends StatelessWidget {
  const HomeVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: PlayerController(),
      ),
    );
  }
}
