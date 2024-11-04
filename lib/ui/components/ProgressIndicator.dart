import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ZoonaProgressIndicator extends StatelessWidget {
  const ZoonaProgressIndicator({
    super.key,
    required this.percentage,
    required this.tempPage,
    required this.listPages,
  });

  final double percentage;
  final int tempPage;
  final List<String> listPages;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LinearPercentIndicator(
          animation: true,
          lineHeight: 20.0,
          barRadius: Radius.circular(5),
          animationDuration: 200,
          animateFromLastPercent: true,
          curve: Curves.linear,
          percent: percentage,
          center: Text("progress"),
          linearStrokeCap: LinearStrokeCap.roundAll,
          progressColor: Theme.of(context).primaryColorLight,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text('${tempPage}/${listPages.length}'),
        ),
      ],
    );
  }
}
