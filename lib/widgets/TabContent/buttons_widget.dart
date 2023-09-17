import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          text: 'Отмена',
          bgColor: bgPrimary,
          textColor: textPrimary,
        ),
        SizedBox(width: 120),
        CustomButton(
          text: 'Добавить',
          bgColor: bgButton,
          textColor: textSecondary,
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
  });

  final String text;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 36,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: textColor,
        ),
        child: Text(
          text,
        ),
      ),
    );
  }
}
