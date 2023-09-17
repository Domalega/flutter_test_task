import 'package:flutter/material.dart';
import 'package:flutter_test_task/constants/colors.dart';

final List<String> list = <String>[
  'Вариант 1',
  'Вариант 2',
  'Вариант 3',
  'Вариант 4',
  'Вариант 5',
];

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DropdownButtonHideUnderline(
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: bgSecondary,
            ),
          ),
        ),
        child: DropdownButton<String>(
          value: dropdownValue,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: CustomDropdownMenuItem(
                itemWidth: 224,
                itemHeight: 36,
                theme: theme,
                value: value,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class CustomDropdownMenuItem extends StatelessWidget {
  final double itemWidth;
  final double itemHeight;
  final String value;

  final ThemeData theme;

  const CustomDropdownMenuItem({
    super.key,
    required this.itemWidth,
    required this.itemHeight,
    required this.value,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: itemWidth,
      height: itemHeight,
      child: Center(
        child: Text(
          value,
          style: theme.textTheme.bodyMedium,
        ),
      ),
    );
  }
}
