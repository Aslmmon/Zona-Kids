import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoon_kids/ui/components/AppButton.dart';
import 'package:zoon_kids/ui/components/AppEditText.dart';
import 'package:zoon_kids/ui/home/homeScreen.dart';
import 'package:zoon_kids/ui/registration/register/RegisterScreen.dart';
import 'package:zoon_kids/utils/Constants.dart';

import '../../../utils/AppNavigation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).primaryColorLight,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: AppButton(
              AppButtonText: 'Skip',
              onAppButtonClick: () =>
                  AppNavigation.navigateToDestination(context, HomeScreen()),
              width: 70,
              AppButtonColor: Theme.of(context).primaryColorLight,
            ),
          )
        ],
        backgroundColor: Theme.of(context).primaryColorLight,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(registerBackground,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    CircleAvatarRabbitLogo(),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Login Now',
                      style: TextStyle(
                          fontSize: 24,
                          color: Theme.of(context).primaryColorLight),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: EditText(hintText: 'Email'),
                    ),
                    EditText(hintText: 'Password'),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: AppButton(
                        width: 120,
                        AppButtonText: 'Login',
                        onAppButtonClick: () {},
                        AppButtonColor: Theme.of(context).primaryColorLight,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        AppNavigation.navigateToDestination(
                            context, RegisterScreen());
                      },
                      child: Text(
                        'Create New User',
                        style: TextStyle(
                            fontSize: 24,
                            color: Theme.of(context).primaryColorLight),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'or continue with',
                      style: TextStyle(color: Theme.of(context).indicatorColor),
                    ),
                    AppButton(
                        AppButtonText: 'G',
                        width: 50,
                        AppButtonTextColor: Theme.of(context).primaryColorLight,
                        AppButtonColor: Theme.of(context).highlightColor,
                        onAppButtonClick: () {})
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class CircleAvatarRabbitLogo extends StatelessWidget {
  const CircleAvatarRabbitLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 55,
      backgroundColor: Theme.of(context).highlightColor,
      child: Hero(
          tag: heroRabbitTag,
          child: SvgPicture.asset(
            rabbitLogo,
            width: 50,
          )),
    );
  }
}
