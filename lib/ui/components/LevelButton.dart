import 'package:chiclet/chiclet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoon_kids/data/models/levels/Levels.dart';
import 'package:zoon_kids/ui/quiz/QuizScreen.dart';
import 'package:zoon_kids/utils/AppNavigation.dart';

class LevelButton extends StatelessWidget {
  const LevelButton({
    super.key,
    required this.level,
  });

  final Levels level;

  @override
  Widget build(BuildContext context) {
    return ChicletOutlinedAnimatedButton(
      buttonType: ChicletButtonTypes.circle,
      padding: EdgeInsets.all(10),
      borderWidth: 2,
      height: 100,
      borderColor: Theme.of(context).primaryColorLight,
      backgroundColor: Color(0XFF6ABBCB),
      onPressed: () {
        AppNavigation.navigateToDestination(context, Quizscreen());
      },
      // backgroundColor: Theme.of(context).primaryColorLight,
      child: SvgPicture.asset(level.image ?? ''),
    );
  }
}
