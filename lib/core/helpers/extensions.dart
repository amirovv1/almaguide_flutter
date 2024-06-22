import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

extension AnimatedColumn on Column {
  Widget withStaggeredAnimations() {
    return AnimationLimiter(
      child: Column(
        mainAxisSize: mainAxisSize,
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        children: AnimationConfiguration.toStaggeredList(
          childAnimationBuilder: (widget) => SlideAnimation(
            duration: const Duration(milliseconds: 400),
            child: FadeInAnimation(child: widget),
          ),
          // ignore: unnecessary_this
          children: this.children,
        ),
      ),
    );
  }
}