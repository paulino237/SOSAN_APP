import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerApp extends StatefulWidget {
  @override
  _VideoPlayerAppState createState() => _VideoPlayerAppState();
}

class _VideoPlayerAppState extends State<VideoPlayerApp> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayer();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  void _initializeVideoPlayer() {
    // Remplacer 'path/to/your/video.mp4' par le chemin réel de votre vidéo
    _videoPlayerController = VideoPlayerController.asset('assets/2.mp4')
      ..initialize().then((_) {
        setState(() {});
        _videoPlayerController.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Afficher la vidéo
          _videoPlayerController.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _videoPlayerController.value.aspectRatio,
                  child: VideoPlayer(_videoPlayerController),
                )
              : Container(),

          // Bouton Pause/Lecture au centre
          //   Align(
          //   alignment: Alignment.center,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: Colors.black54, // Couleur de fond transparente
          //       shape: BoxShape.circle,
          //     ),
          //     child: IconButton(
          //       icon: Icon(
          //         _videoControllers[_currentIndex].value.isPlaying ? Icons.pause : Icons.play_arrow,
          //         color: Colors.white, // Couleur de l'icône
          //       ),
          //       onPressed: () {
          //         if (_videoControllers[_currentIndex].value.isPlaying) {
          //           _videoControllers[_currentIndex].pause();
          //         } else {
          //           _videoControllers[_currentIndex].play();
          //         }
          //         setState(() {});
          //       },
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
