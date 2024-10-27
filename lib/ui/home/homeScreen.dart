import 'package:chiclet/chiclet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoon_kids/data/network/service/ApiService.dart';
import 'package:zoon_kids/ui/components/LevelButton.dart';
import 'package:zoon_kids/utils/Constants.dart';
import 'package:zoon_kids/utils/Extensions.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final levelsList = ref.watch(levelsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ChicletOutlinedAnimatedButton(
              onPressed: () {},
              padding: EdgeInsets.all(5),
              backgroundColor: Color(0XFF6ABBCB),
              borderColor: Theme.of(context).primaryColorLight,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Hero(
                    tag: heroRabbitTag,
                    child: SvgPicture.asset(
                      rabbitLogo,
                      width: 50,
                      height: 50,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.end,
                    "Stage One",
                    style: TextStyle(
                        color: Theme.of(context).hintColor, fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
          levelsList.when(
              data: (data) => Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) =>
                          checkIsFifthItemInList(index)
                              ? Divider()
                              : Container(
                                  margin: EdgeInsets.all(20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      checkIsSecondItemInList(index)
                                          ? Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  SvgPicture.asset(
                                                    data[index]
                                                            .animated_image ??
                                                        '',
                                                    height: 120,
                                                  ),
                                                ],
                                              ),
                                            )
                                          : SizedBox(),
                                      LevelButton(level: data[index]),
                                    ],
                                  ),
                                ),
                      itemCount: data.length,
                    ),
                  ),
              error: (error, e) => Text(error.toString()),
              loading: () => Center(child: CircularProgressIndicator())),
        ],
      ),
    );
  }
}
