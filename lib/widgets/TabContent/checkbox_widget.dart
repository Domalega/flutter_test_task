import 'package:flutter/material.dart';
import 'package:flutter_test_task/constants/colors.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({
    super.key,
    required this.title,
    required this.firstOptionName,
    required this.secondOptionName,
    required this.firstOptionValue,
    required this.secondOptionValue,
    required this.firstOnChanged,
    required this.secondOnChanged,
  });

  final String title;
  final String firstOptionName;
  final String secondOptionName;
  final bool firstOptionValue;
  final bool secondOptionValue;
  final Function(bool)? firstOnChanged;
  final Function(bool)? secondOnChanged;

  @override
  State createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: theme.textTheme.bodyMedium,
        ),
        const SizedBox(height: 20),
        CheckboxCreator(
          value: widget.firstOptionValue,
          theme: theme,
          name: widget.firstOptionName,
          onChangeds: widget.firstOnChanged,
        ),
        const SizedBox(height: 10),
        CheckboxCreator(
          value: widget.secondOptionValue,
          theme: theme,
          name: widget.secondOptionName,
          onChangeds: widget.secondOnChanged,
        ),
      ],
    );
  }
}

class CheckboxCreator extends StatelessWidget {
  const CheckboxCreator({
    super.key,
    required this.name,
    required this.value,
    required this.onChangeds,
    required this.theme,
  });

  final String name;
  final bool value;
  final Function(bool)? onChangeds;

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          activeColor: accentColor,
          onChanged: (value) => {
            if (onChangeds != null) {onChangeds!(value as bool)}
          },
        ),
        Text(
          name,
          style: theme.textTheme.bodySmall,
        )
      ],
    );
  }
}
