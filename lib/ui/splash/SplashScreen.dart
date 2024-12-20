import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoon_kids/utils/Constants.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        SvgPicture.asset(
          splashBackground,
          fit: BoxFit.cover,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: SvgPicture.asset(rabbitLogo),
            ),
            const SizedBox(height: 30),
            SvgPicture.asset(
              zonaLogo,
            )
          ],
        ),
      ],
    ));
  }
}
