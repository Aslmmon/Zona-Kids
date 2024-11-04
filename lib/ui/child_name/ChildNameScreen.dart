import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoon_kids/ui/components/AppButton.dart';
import 'package:zoon_kids/ui/components/AppEditText.dart';
import 'package:zoon_kids/utils/Constants.dart';

class ChildNameScreen extends StatelessWidget {
  const ChildNameScreen({super.key, required this.onNextClicked});

  final VoidCallback onNextClicked;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          fit: StackFit.expand,
          children: [
            SvgPicture.asset(bgChildScreen, fit: BoxFit.contain),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(
                      rabbitBorder,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                    EditText(hintText: 'Name'),
                  ],
                ),
                SizedBox(height: 20),
                AppButton(
                  AppButtonText: 'Next',
                  AppButtonColor: Theme.of(context).primaryColorLight,
                  onAppButtonClick: onNextClicked,
                  width: 120,
                )
              ],
            ),
          ],
        ));
  }
}
