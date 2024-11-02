import 'package:chiclet/chiclet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoon_kids/ui/components/AppButton.dart';
import 'package:zoon_kids/utils/Constants.dart';

class SoundExerciseScreen extends StatelessWidget {
  const SoundExerciseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('What is the animal'),
        ChicletOutlinedAnimatedButton(
          width: 50,
          height: 100,
          buttonType: ChicletButtonTypes.circle,
          child: SvgPicture.asset(playSound),
          onPressed: () {},
        ),
        Container(
            height: 300,
            child: GridView.count(
                crossAxisCount: 3,
                padding: EdgeInsets.all(5),
                children: List.generate(
                  3,
                  (index) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 5.0,
                              color: Theme.of(context).primaryColorLight)),
                    );
                  },
                )
                )),
        AppButton(AppButtonText: 'Next', onAppButtonClick: () {})
      ],
    );
  }
}
