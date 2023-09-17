import 'package:flutter/material.dart';
import 'package:flutter_test_task/widgets/TabContent/checkbox_widget.dart';
import 'package:flutter_test_task/widgets/TabContent/dropdown_widget.dart';
import 'package:flutter_test_task/widgets/TabContent/text_field_widget.dart';

import 'buttons_widget.dart';

class TabContent extends StatefulWidget {
  const TabContent({
    super.key,
  });

  @override
  State<TabContent> createState() => _TabContentState();
}

class _TabContentState extends State<TabContent> {
  late String _dataName;
  late String _dataAmount;
  late String _dataComment;
  late String _dataOrganization;
  late String _dataCounterparty;
  late String _dataContract;
  late bool _option1Value;
  late bool _option2Value;

  @override
  void initState() {
    super.initState();
    _dataName = '';
    _dataAmount = '';
    _dataComment = '';
    _dataOrganization = '';
    _dataCounterparty = '';
    _dataContract = '';

    _option1Value = false;
    _option2Value = false;
  }

  @override
  Widget build(BuildContext context) {
    var firstScreen = [
      TextFiledWidget(
        label: 'Наименование',
        hint: 'Выбрать',
        lines: 1,
        data: _dataName,
        onChanged: (value) => setState(() {
          _dataName = value;
        }),
      ),
      const SizedBox(height: 20),
      TextFiledWidget(
        label: 'Сумма',
        hint: 'Введите сумму',
        lines: 1,
        data: _dataAmount,
        onChanged: (value) => setState(() {
          _dataAmount = value;
        }),
      ),
      const SizedBox(height: 30),
      CheckboxWidget(
        title: 'Пример списка с чекбоксами',
        firstOptionName: 'Элемент списка 1',
        secondOptionName: 'Элемент списка 2',
        firstOptionValue: _option1Value,
        secondOptionValue: _option2Value,
        firstOnChanged: (value) => setState(() {
          _option1Value = value;
        }),
        secondOnChanged: (value) => setState(() {
          _option2Value = value;
        }),
      ),
      const SizedBox(height: 30),
      TextFiledWidget(
        label: 'Коментарий',
        hint: 'Мой новый коментарий',
        lines: 5,
        data: _dataComment,
        onChanged: (value) => setState(() {
          _dataComment = value;
        }),
      ),
      const SizedBox(height: 30),
      const ButtonsWidget()
    ];

    var secondScreen = [
      TextFiledWidget(
        label: 'Организация',
        hint: 'Выбрать',
        lines: 1,
        data: _dataOrganization,
        onChanged: (value) => setState(() {
          _dataOrganization = value;
        }),
      ),
      const SizedBox(height: 20),
      TextFiledWidget(
        label: 'Контрагент',
        hint: 'Введите сумму',
        lines: 1,
        data: _dataCounterparty,
        onChanged: (value) => setState(() {
          _dataCounterparty = value;
        }),
      ),
      const SizedBox(height: 20),
      TextFiledWidget(
        label: 'Договор',
        hint: 'Введите сумму',
        lines: 1,
        data: _dataContract,
        onChanged: (value) => setState(() {
          _dataContract = value;
        }),
      ),
      const SizedBox(height: 20),
      const DropDownWidget(),
      const SizedBox(height: 180),
      const Align(alignment: Alignment.center, child: ButtonsWidget())
    ];

    return TabBarView(children: <Widget>[
      Column(
        children: firstScreen,
      ),
      Column(
        children: secondScreen,
      ),
    ]);
  }
}
