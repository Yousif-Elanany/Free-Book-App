import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class SlidingImage extends StatelessWidget {
  const SlidingImage({
    Key? key,
    required this.imageSlidingAnimation,
  }) : super(key: key);

  final Animation<Offset> imageSlidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: imageSlidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: imageSlidingAnimation,
            child: Image.asset(AssetsData.logo),
          );
        });
  }
}
