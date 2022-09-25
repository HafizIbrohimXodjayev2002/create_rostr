import 'package:create_rostr/theme/colors.dart';
import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        maximumSize: Size(MediaQuery.of(context).size.width, 45),
        minimumSize: Size(MediaQuery.of(context).size.width, 45),
        primary: AppColors.addButton,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: onPressed,
      label: Text(
        title,
        style: const TextStyle(
          color: Colors.blueAccent,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
      icon: const Icon(
        Icons.add,
        size: 26,
        color: Colors.blueAccent,
      ),
    );
  }
}