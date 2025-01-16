import 'package:flutter/material.dart';
import 'package:sosan_signup_login/RellVideos/feed_item.dart';

class PlayerController extends StatefulWidget {
  const PlayerController({Key? key}) : super(key: key);
  @override
  State<PlayerController> createState() => _PlayerControllerState();
}

class _PlayerControllerState extends State<PlayerController> {
  //properties

  //to check which index is currently played
  int currentIndex = 0;

  //static content
  final List<String> urls = const [
    'assets/1.mp4',
    'assets/2.mp4',
    'assets/3.mp4',
    'assets/4.mp4',
    // 'https://www.pexels.com/fr-fr/video/femme-clinique-medecin-medical-4769287/',
    // 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
    // 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
    // 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: urls.length,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (ctx, index) {
          return FeedItem(url: urls[index]);
        },
      ),
    );
  }
}
