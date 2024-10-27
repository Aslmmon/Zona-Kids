import 'package:chiclet/chiclet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoon_kids/data/network/service/ApiService.dart';
import 'package:zoon_kids/utils/Constants.dart';

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
          child: Hero(tag: heroRabbitTag, child: SvgPicture.asset(rabbitLogo)),
        ),
      ),
      body: levelsList.when(
          data: (data) => ListView.builder(
                itemBuilder: (context, index) => (index % 5 == 0 && index != 0)
                    ? Divider()
                    : Container(
                        margin: EdgeInsets.only(
                            left: index % 2 != 0 ? 200 : 0,
                            bottom: 40,
                            top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ChicletOutlinedAnimatedButton(
                              buttonType: ChicletButtonTypes.circle,
                              padding: EdgeInsets.all(10),
                              borderWidth: 2,
                              height: 70,
                              borderColor: Theme.of(context).primaryColorLight,
                              backgroundColor: Color(0XFF6ABBCB),
                              onPressed: () {},
                              // backgroundColor: Theme.of(context).primaryColorLight,
                              child: SvgPicture.asset(data[index].image),
                            ),
                          ],
                        ),
                      ),
                itemCount: data.length,
              ),
          error: (error, e) => Text(error.toString()),
          loading: () => Center(child: CircularProgressIndicator())),
    );
  }
}
