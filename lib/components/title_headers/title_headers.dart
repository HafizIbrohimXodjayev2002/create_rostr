
import 'package:flutter/material.dart';

class TitleHeaders extends StatelessWidget {
  const TitleHeaders({
    Key? key,
    this.titleLeft = '',
    this.rightWidget,
  }) : super(key: key);

  final String titleLeft;
  final Widget? rightWidget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleLeft,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        rightWidget ?? const SizedBox.shrink(),
      ],
    );
  }
}