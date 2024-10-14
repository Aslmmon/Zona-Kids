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
    this.height = 65,
    this.width = 200,
  });

  final String AppButtonText;
  final VoidCallback onAppButtonClick;
  final Color? AppButtonColor;
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
        borderColor: Colors.black,
        child: Text(
          AppButtonText,
          style:
              TextStyle(color: Theme.of(context).indicatorColor, fontSize: 24),
        ));

    // return Container(
    //   padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
    //   width: MediaQuery.of(context).size.width,
    //   height: 60,
    //   child: ElevatedButton(
    //     onPressed: onAppButtonClick,
    //     child: Text(
    //       AppButtonText,
    //       style:
    //           TextStyle(color: Theme.of(context).indicatorColor, fontSize: 24),
    //     ),
    //     style: ButtonStyle(
    //         backgroundColor:
    //             WidgetStateProperty.all<Color>(Theme.of(context).hintColor),
    //         shape: WidgetStateProperty.all<RoundedRectangleBorder>(
    //             RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(15.0),
    //                 side: BorderSide(color: Theme.of(context).dividerColor)))),
    //   ),
    // );
  }
}
