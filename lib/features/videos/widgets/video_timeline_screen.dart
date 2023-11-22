import 'package:flutter/material.dart';
import 'package:tiktok_clone/features/videos/widgets/video_post.dart';

class VideoTimelineScreen extends StatefulWidget {
  const VideoTimelineScreen({super.key});

  @override
  State<VideoTimelineScreen> createState() => _VideoTimelineScreenState();
}

class _VideoTimelineScreenState extends State<VideoTimelineScreen> {
  final PageController _pageController = PageController();
  final Duration _scrollDuration = const Duration(milliseconds: 200);
  final Curve _scrollCurve = Curves.linear;

  int _itemCount = 4;

  void _onPageChanged(int page) {
    if (page == _itemCount - 1) {
      _itemCount = _itemCount + 4;
      setState(() {});
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onVideoFinished() {
    _pageController.nextPage(
      duration: _scrollDuration,
      curve: _scrollCurve,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      controller: _pageController,
      onPageChanged: _onPageChanged,
      itemCount: _itemCount,
      itemBuilder: (context, index) =>
          VideoPost(onVideoFinished: _onVideoFinished),
    );
  }
}
