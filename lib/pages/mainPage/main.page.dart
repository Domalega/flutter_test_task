import 'package:flutter/material.dart';
import 'package:flutter_test_task/constants/colors.dart';
import 'package:flutter_test_task/widgets/TabBar/tab_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Заголовок',
                  style: theme.textTheme.bodyLarge,
                ),
              )
            ],
          ),
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(1),
              child: Container(
                color: bgSecondary,
                height: 1,
              )),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: DefaultTabController(
            initialIndex: 0,
            length: 2,
            animationDuration: Duration(milliseconds: 700),
            child: TabBarWidget(),
          ),
        ));
  }
}
