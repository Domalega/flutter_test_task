import 'package:flutter/material.dart';
import 'package:flutter_test_task/constants/colors.dart';

class TextFiledWidget extends StatelessWidget {
  const TextFiledWidget(
      {super.key,
      required this.label,
      required this.hint,
      required this.lines});

  final String? label;
  final String? hint;
  final int? lines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label ?? '',
        ),
        const SizedBox(height: 8),
        TextField(
          maxLines: lines,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(10),
            hintText: hint,
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(width: 1, color: bgSecondary),
            ),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: accentColor),
                borderRadius: BorderRadius.zero),
          ),
        ),
      ],
    );
  }
}
