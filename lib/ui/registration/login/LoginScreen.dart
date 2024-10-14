import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoon_kids/components/AppButton.dart';
import 'package:zoon_kids/components/AppEditText.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            'assets/register_bg.svg',
            fit: BoxFit.cover,
          ),
          Column(
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
                      fontSize: 24, color: Theme.of(context).primaryColorLight),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
