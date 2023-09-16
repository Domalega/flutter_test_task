import 'package:flutter/material.dart';
import 'package:flutter_test_task/widgets/TabContent/checkbox_widget.dart';
import 'package:flutter_test_task/widgets/TabContent/text_field_widget.dart';

import 'buttons_widget.dart';

class TabContent extends StatelessWidget {
  const TabContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TabBarView(children: <Widget>[
      Column(
        children: [
          //first page
          TextFiledWidget(label: 'Наименование', hint: 'Выбрать', lines: 1),
          SizedBox(height: 20),
          TextFiledWidget(label: 'Сумма', hint: 'Введите сумму', lines: 1),
          SizedBox(height: 30),
          CheckboxWidget(
              title: 'Пример списка с чекбоксами',
              option1: 'Элемент списка 1',
              option2: 'Элемент списка 2'),
          SizedBox(height: 30),
          TextFiledWidget(
              label: 'Коментарий', hint: 'Мой новый коментарий', lines: 5),
          SizedBox(height: 30),
          ButtonsWidget()
        ],
      ),
      //second page
      Card(
        child: Text('dd'),
      ),
    ]);
  }
}
