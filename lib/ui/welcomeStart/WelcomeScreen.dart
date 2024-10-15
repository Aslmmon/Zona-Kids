import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoon_kids/components/AppButton.dart';
import 'package:zoon_kids/ui/registration/login/LoginScreen.dart';
import 'package:zoon_kids/utils/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            'assets/welcome_background.svg',
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
                    style: TextStyle(fontSize: 24, color: Theme.of(context).hintColor),
                  ),
                  SizedBox(height: 10),
                  SvgPicture.asset(zonaLogo),
                  SizedBox(height: 120),
                  SvgPicture.asset(rabbitLogo, width: 120, height: 210),
                  SizedBox(height: 20),
                  Text(
                    'Where Learning is Fun!',
                    style: TextStyle(
                        fontSize: 24, color: Theme.of(context).hintColor),
                  ),
                  AppButton(
                    AppButtonText: 'Let\'s start !',
                    onAppButtonClick: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
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
