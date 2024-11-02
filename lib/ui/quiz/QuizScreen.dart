import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoon_kids/ui/components/ProgressIndicator.dart';
import 'package:zoon_kids/utils/Constants.dart';

class Quizscreen extends StatefulWidget {
  @override
  State<Quizscreen> createState() => _QuizscreenState();
}

class _QuizscreenState extends State<Quizscreen> {
  final _pageControler = PageController(initialPage: 0);
  final listPages = ['one', 'two', 'three', 'four', 'five'];
  double percentage = 0.0;
  int tempPage = 0;
  var loader = SvgAssetLoader(background_quiz);


  @override
  void initState() {
    super.initState();
    svg.cache.putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
             SvgPicture.asset(loader.assetName, fit: BoxFit.cover),
            Column(
              children: [
                ZoonaProgressIndicator(
                    percentage: percentage,
                    tempPage: tempPage,
                    listPages: listPages),
                Expanded(
                  child: PageView(
                    onPageChanged: (page) {
                      setState(() {
                        tempPage = page;
                        percentage = page / listPages.length;
                      });
                    },
                    controller: _pageControler,
                    children: [
                      for (String pages in listPages)
                        Center(child: Text("Hello ${pages}"))
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
