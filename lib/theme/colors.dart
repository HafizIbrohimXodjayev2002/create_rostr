import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color background = Color(0xFFF6F9FA);
  static const Color addButton = Color(0xFFCFE8FB);
  static const Color ratingButton = Color(0xFF83C3F5);
  static const Color activeSwitch = Color(0xFF2F80ED);
  static const Color deactiveRatingButton = Color(0xFFF6FAFE);

  /// Gradient Color
  static const LinearGradient buttonGradient = LinearGradient(
    colors: [
      Color(0xFF2F80ED),
      Color(0xFF56CCF2),
    ],
    end: Alignment.centerLeft,
    begin: Alignment.centerRight,
  );
}
