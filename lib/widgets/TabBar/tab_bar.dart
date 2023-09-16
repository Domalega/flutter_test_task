import 'package:flutter/material.dart';
import 'package:flutter_test_task/constants/colors.dart';
import 'package:flutter_test_task/widgets/TabContent/tab_contents.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: const TabBar(
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              labelPadding: EdgeInsets.zero,

              //WHY DOSNT WORK!!!?!??!
              //labelStyle: theme.textTheme.bodyLarge,
              labelStyle: TextStyle(
                  color: bgPrimary, fontWeight: FontWeight.w700, fontSize: 16),
              tabs: <Widget>[
                Tab(
                  child: Text('Вкладка 1'),
                ),
                Tab(
                  child: Text('Вкладка 2'),
                ),
              ],
            ),
          ),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: TabContent(),
          ),
        )
      ],
    );
  }
}
