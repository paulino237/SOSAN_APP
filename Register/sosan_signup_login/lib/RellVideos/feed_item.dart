import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:sosan_signup_login/Constante.dart';

import 'package:video_player/video_player.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedItem extends StatefulWidget {
  //Url to play video
  final String url;
  const FeedItem({Key? key, required this.url}) : super(key: key);

  @override
  State<FeedItem> createState() => _FeedItemState();
}

class _FeedItemState extends State<FeedItem> {
  //player controller
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    //initialize player
    initializePlayer(widget.url);
  }

//Initialize Video Player
  void initializePlayer(String url) async {
    final fileInfo = await checkCacheFor(url);
    if (fileInfo == null) {
      // ignore: deprecated_member_use
      _controller = VideoPlayerController.network(url);
      _controller!.initialize().then((value) {
        cachedForUrl(url);
        setState(() {
          _controller!.play();
        });
      });
    } else {
      final file = fileInfo.file;
      _controller = VideoPlayerController.file(file);
      _controller!.initialize().then((value) {
        setState(() {
          _controller!.play();
        });
      });
    }
  }

//: check for cache
  Future<FileInfo?> checkCacheFor(String url) async {
    final FileInfo? value = await DefaultCacheManager().getFileFromCache(url);
    return value;
  }

//:cached Url Data
  void cachedForUrl(String url) async {
    await DefaultCacheManager().getSingleFile(url).then((value) {
      print('downloaded successfully done for $url');
    });
  }

//:Dispose
  @override
  void dispose() {
    if (_controller != null) {
      _controller!.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return (_controller == null)
        ? const Center(
            child: CircularProgressIndicator(
            color: Constante.bleu,
          ))
        : ((_controller!.value.isInitialized)
            ? Stack(
                children: [
                  SizedBox.expand(
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: SizedBox(
                        width: _controller!.value.size.width,
                        height: _controller!.value.size.height,
                        child: VideoPlayer(_controller!),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16.0,
                    left: 16.0,
                    right: 16.0,
                    child: TextField(
                        onChanged: (value) {
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          hintStyle: GoogleFonts.montserrat(),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          filled: true,
                          fillColor: Colors.grey[200]?.withOpacity(0.3),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Constante.bleu,
                            size: 20,
                          ),
                        )),
                  ),
                  Positioned(
                    bottom: 200.0,
                    right: 16.0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Constante.bleu,
                            size: 30,
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.comment,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 50.0,
                      left: 16.0,
                      right: 16.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/a.jpg'),
                              ),
                              SizedBox(width: 12.0),
                              Text(
                                " SOSAN USER,",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            " godJob welcome in the application SOSAN,\n votre sante notre priorité nous sommes \n disponible 24H/24H",
                            style: GoogleFonts.montserrat(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )),
                ],
              )
            : const Center(
                child: CircularProgressIndicator(
                color: Constante.vert,
              )));
  }
}
