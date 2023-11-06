import 'package:flutter/material.dart';

class VideoTimelineScreen extends StatefulWidget {
  const VideoTimelineScreen({super.key});

  @override
  State<VideoTimelineScreen> createState() => _VideoTimelineScreenState();
}

class _VideoTimelineScreenState extends State<VideoTimelineScreen> {
  int _itemCount = 4;

  List<Color> colors = [
    Colors.blue,
    Colors.pink,
    Colors.teal,
    Colors.purple,
  ];

  void _onPageChange(int page) {
    if (page == _itemCount - 1) {
      _itemCount = _itemCount + 1;
      colors.addAll(
        [
          Colors.blue,
          Colors.pink,
          Colors.teal,
          Colors.purple,
        ],
      );
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: _onPageChange,
      scrollDirection: Axis.vertical,
      itemCount: _itemCount,
      itemBuilder: (context, index) => Container(
        color: colors[index],
        child: Center(
          child: Text(
            "Screen $index",
            style: const TextStyle(fontSize: 68),
          ),
        ),
      ),
    );
  }
}
