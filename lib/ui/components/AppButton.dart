import 'package:audioplayers/audioplayers.dart';
import 'package:chiclet/chiclet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.AppButtonText,
    required this.onAppButtonClick,
    this.AppButtonColor = Colors.black,
    this.height = 40,
    this.width = 200,
    this.AppButtonTextColor = Colors.white,
  });

  final String AppButtonText;
  final VoidCallback onAppButtonClick;
  final Color? AppButtonColor;
  final Color? AppButtonTextColor;

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ChicletOutlinedAnimatedButton(
        onPressed: () {
          //FlutterBeep.beep();
          AudioPlayer().play(AssetSource('audio/click_pop_button.mp3'));
          onAppButtonClick();
        },
        height: height,
        width: width,
        backgroundColor: AppButtonColor,
        borderColor: Colors.black87,
        buttonType: ChicletButtonTypes.roundedRectangle,
        child: Text(
          AppButtonText,
          style: TextStyle(color: AppButtonTextColor, fontSize: 24),
        ));
  }
}
