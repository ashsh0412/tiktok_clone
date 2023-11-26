import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class PostVideoButton extends StatelessWidget {
  final bool inverted;
  const PostVideoButton({
    super.key,
    required this.inverted,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          right: 20,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.size8,
            ),
            height: 30,
            width: 25,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(
                Sizes.size8,
              ),
            ),
          ),
        ),
        Positioned(
          left: 20,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.size8,
            ),
            height: 30,
            width: 25,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(
                Sizes.size8,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size10,
          ),
          height: 30,
          decoration: BoxDecoration(
              color: inverted ? Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(
                Sizes.size6,
              )),
          child: Center(
            child: FaIcon(
              FontAwesomeIcons.plus,
              color: inverted ? Colors.white : Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
