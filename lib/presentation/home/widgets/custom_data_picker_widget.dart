import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDataPickerWidget extends StatelessWidget {
  CustomDataPickerWidget({
    Key? key,
    this.onPressed,
    this.title,
    this.hintText,
  }) : super(key: key);

  final VoidCallback? onPressed;
  String? title;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ?? () {},
      child: Container(
        height: 48,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
        child: Text(
          title ?? hintText ?? '',
          style: TextStyle(
            color: title == null ? Colors.grey.withOpacity(0.8) : Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}