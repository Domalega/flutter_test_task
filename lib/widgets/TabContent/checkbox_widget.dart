import 'package:flutter/material.dart';
import 'package:flutter_test_task/constants/colors.dart';

class CheckboxWidget extends StatefulWidget {
  final String title;
  final String option1;
  final String option2;

  const CheckboxWidget(
      {super.key,
      required this.title,
      required this.option1,
      required this.option2});

  @override
  State createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool _option1Value = false;
  bool _option2Value = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title),
        const SizedBox(height: 20),
        Row(
          children: [
            Checkbox(
              value: _option1Value,
              activeColor: accentColor,
              onChanged: (value) {
                setState(() {
                  _option1Value = value!;
                });
              },
            ),
            Text(widget.option1),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Checkbox(
              value: _option2Value,
              onChanged: (value) {
                setState(() {
                  _option2Value = value!;
                });
              },
            ),
            Text(widget.option2),
          ],
        ),
      ],
    );
  }
}
