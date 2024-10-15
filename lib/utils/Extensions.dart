import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

extension text on Widget {
  Animate get provideTextAnimation => this.animate().fade(duration: 3.seconds);

  Animate get provideImageAnimation =>
      this.animate().scaleXY(duration: 2.seconds);

  Animate get provideButtonAnimation =>
      this.animate().rotate(duration: 1.seconds);
}
