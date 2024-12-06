
import 'package:fftv/screens/reels/widgets/reels_overlay_content.dart';
import 'package:fftv/screens/reels/widgets/watch_full_drama_button.dart';
import 'package:fftv/utils/screen_size_config.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:fftv/resources/resources.dart';


class Reels extends StatefulWidget {
  const Reels({super.key});

  @override
  State<Reels> createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  final List<VideoPlayerController> _controllers = [];
  int _currentIndex = 0;
  bool _isPaused = false;
  late PageController _pageController;
  final List<String> videoPaths = [
    "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4",
    // "https://fftv.s3.amazonaws.com/videos/Demo/01/1.mp4",
    // "https://fftv.s3.amazonaws.com/videos/Demo/01/2.mp4",
    "https://fftv.s3.amazonaws.com/videos/Demo/01/3.mp4",
    "https://fftv.s3.amazonaws.com/videos/Demo/01/4.mp4",
    "https://fftv.s3.amazonaws.com/videos/Demo/01/5.mp4",
    "https://fftv.s3.amazonaws.com/videos/Demo/01/6.mp4",
    "https://fftv.s3.amazonaws.com/videos/Demo/01/7.mp4",
    "https://fftv.s3.amazonaws.com/videos/Demo/01/8.mp4",
    "https://fftv.s3.amazonaws.com/videos/Demo/01/9.mp4",
    "https://fftv.s3.amazonaws.com/videos/Demo/01/10.mp4"
  ];
  void handleClickWatchDrama(){

  }

  @override
  void initState() {

    super.initState();
    // Initializing PageController
    _pageController = PageController();

    // Initialize Video Controllers
    for (var url in videoPaths) {
      if (url.isNotEmpty) {
        final controller = VideoPlayerController.networkUrl(Uri.parse(url))
          ..setLooping(true);
        controller.initialize().then((_) {
            setState(() {}); // Update UI when video is initialized
            // Add the listener after initialization
            controller.addListener(() {
              if (controller.value.position == controller.value.duration) {
                // Video has ended, move to the next one if possible
                if (_currentIndex < _controllers.length - 1) {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              }
            });
          });
        _controllers.add(controller);
      }
    }

    // Start the first video
    if (_controllers.isNotEmpty) {
      _controllers.first.play();
    }
  }




  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
      _isPaused = false;
    });
    // Pause all videos except the current one
    for (var i = 0; i < _controllers.length; i++) {
      if (i == index) {
        _controllers[i].play();
      } else {
        _controllers[i].pause();
      }
    }
  }

  void _togglePlayPause() {
    final controller = _controllers[_currentIndex];
    setState(() {
      if (controller.value.isPlaying) {
        controller.pause();
        _isPaused = true;
      } else {
        controller.play();
        _isPaused = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:PageView.builder(
          controller: _pageController,
          scrollDirection: Axis.vertical,
          onPageChanged: _onPageChanged,
          itemBuilder: (context,index){
        final controller = _controllers[index];

        return  Stack(
          children: [
        GestureDetector(
        onTap: _togglePlayPause,
        child:  SizedBox.expand(
        child:controller.value.isInitialized
        ? FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(
        width: controller.value.size.width,
        height: controller.value.size.height,
        child: VideoPlayer(controller),
        ),
        )
            : const Center(child: CircularProgressIndicator(),),
        ),
        ),

        if(_isPaused)
          Center(
            child: IconButton(
              style: IconButton.styleFrom(
                backgroundColor: R.themeProvider.colors.description.withOpacity(0.5),
              ),
              icon: Icon(
                Icons.play_arrow,
                size: 60.0,
                color: Colors.white,
              ),
              onPressed: _togglePlayPause,
            ),
          ),



        ReelsOverlayContent(handleClickWatchDrama: handleClickWatchDrama)

        ],
        );
        }),
    );
  }
}
