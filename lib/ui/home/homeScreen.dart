import 'package:chiclet/chiclet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoon_kids/utils/Constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Hero(tag: heroRabbitTag, child: SvgPicture.asset(rabbitLogo)),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => (index % 5 == 0 && index != 0)
            ? Divider()
            : Container(
                margin: EdgeInsets.only(
                    right: index % 2 != 0 ? 100 : 0, bottom: 40, top: 20),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Theme.of(context).highlightColor,
                  child: ChicletAnimatedButton(
                    buttonType: ChicletButtonTypes.roundedRectangle,
                    onPressed: () {},
                    backgroundColor: Theme.of(context).primaryColorLight,
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.palette,
                    ),
                  ),
                ),
              ),
        itemCount: 50,
      ),
    );
  }
}
