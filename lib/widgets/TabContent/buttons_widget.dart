import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 150,
          height: 36,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: bgPrimary, foregroundColor: textPrimary),
            child: const Text('Отмена'),
          ),
        ),
        const SizedBox(width: 16),
        SizedBox(
          width: 150,
          height: 36,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: bgButton, foregroundColor: bgPrimary),
            child: const Text('Добавить'),
          ),
        ),
      ],
    );
  }
}
