import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoon_kids/ui/components/AppButton.dart';
import 'package:zoon_kids/ui/home/homeScreen.dart';
import 'package:zoon_kids/utils/AppNavigation.dart';
import 'package:zoon_kids/utils/Constants.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key, required this.onNextClicked});

  final VoidCallback onNextClicked;

  @override
  Widget build(BuildContext context) {
    timeDilation = 3;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            welcomeBackground,
            fit: BoxFit.cover,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'welcome to',
                    style: TextStyle(
                        fontSize: 24, color: Theme.of(context).hintColor),
                  ),
                  SizedBox(height: 10),
                  SvgPicture.asset(zonaLogo),
                  SizedBox(height: 120),
                  Hero(
                    tag: heroRabbitTag,
                    child:
                        SvgPicture.asset(rabbitLogo, width: 120, height: 210),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Where Learning is Fun!',
                    style: TextStyle(
                        fontSize: 24, color: Theme.of(context).hintColor),
                  ),
                  AppButton(
                    AppButtonText: 'Let\'s start !',
                    onAppButtonClick: onNextClicked,
                    AppButtonColor: Theme.of(context).hintColor,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
