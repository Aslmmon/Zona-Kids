import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoon_kids/ui/components/AppButton.dart';
import 'package:zoon_kids/ui/components/AppEditText.dart';
import 'package:zoon_kids/utils/Constants.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).primaryColorLight,
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            registerBackground,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Register Now',
                  style: TextStyle(
                      fontSize: 24, color: Theme.of(context).primaryColorLight),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: EditText(hintText: 'Email'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: EditText(hintText: 'Password'),
                ),
                EditText(hintText: 'Confirm Password'),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: AppButton(
                    width: 120,
                    AppButtonText: 'Register',
                    onAppButtonClick: () {},
                    AppButtonColor: Theme.of(context).primaryColorLight,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
