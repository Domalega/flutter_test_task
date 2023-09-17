import 'package:flutter/material.dart';
import 'package:flutter_test_task/constants/colors.dart';

class TextFiledWidget extends StatefulWidget {
  const TextFiledWidget({
    super.key,
    required this.label,
    required this.hint,
    required this.lines,
    required this.data,
    required this.onChanged,
  });

  final String? label;
  final String? hint;
  final int? lines;
  final String? data;
  final Function(String)? onChanged;

  @override
  State<TextFiledWidget> createState() => _TextFiledWidgetState();
}

class _TextFiledWidgetState extends State<TextFiledWidget> {
  late TextEditingController _inputDataController;

  @override
  void initState() {
    super.initState();
    _inputDataController = TextEditingController(text: widget.data);
  }

  @override
  void dispose() {
    _inputDataController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label ?? '',
          style: theme.textTheme.bodyMedium,
        ),
        const SizedBox(height: 8),
        TextField(
          onChanged: (value) =>
              {if (widget.onChanged != null) widget.onChanged!(value)},
          maxLines: widget.lines,
          controller: _inputDataController,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(10),
            hintText: widget.hint,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: bgSecondary),
              //borderRadius: BorderRadius.zero,
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: accentColor),
              //borderRadius: BorderRadius.zero,
            ),
          ),
        ),
      ],
    );
  }
}
