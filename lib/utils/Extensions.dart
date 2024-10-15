import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

extension text on Widget {
  Animate get provideTextAnimation => this.animate().fadeIn(duration: 1.seconds);

  Animate get provideImageAnimation =>
      this.animate().rotate().scaleXY(duration: 1.seconds);

  Animate get provideButtonAnimation =>
      this.animate().rotate(duration: 1.seconds);
}
