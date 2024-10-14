import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoon_kids/components/AppButton.dart';
import 'package:zoon_kids/components/AppEditText.dart';

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
              onAppButtonClick: () {},
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
          SvgPicture.asset(
            'assets/register_bg.svg',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Login Now',
                  style: TextStyle(
                      fontSize: 24, color: Theme.of(context).primaryColorLight),
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
                  onTap: () {},
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
        ],
      ),
    );
  }
}
