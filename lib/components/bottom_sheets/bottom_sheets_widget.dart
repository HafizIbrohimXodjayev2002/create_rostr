import 'package:create_rostr/components/buttons/custom_button_widget.dart';
import 'package:create_rostr/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomSheetsWidget {
  static void bottomsheet({
    required VoidCallback onPressed,
    required String title,
    required String subtitle,
    Widget? child1,
    Widget? child2,
    Widget? child3,
  }) =>
      Get.bottomSheet(
        enableDrag: true,
        persistent: true,
        isScrollControlled: true,
        backgroundColor: AppColors.background,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 64,
                height: 5,
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.6), borderRadius: BorderRadius.circular(6)),
              ),
              const SizedBox(height: 32),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 16),
              child1 ?? const SizedBox.shrink(),
              const SizedBox(height: 12),
              child2 ?? const SizedBox.shrink(),
              const SizedBox(height: 12),
              child3 ?? const SizedBox.shrink(),
              const SizedBox(height: 32),
              CustomButtonWidget(
                onPressed: () => onPressed(),
                title: "Save",
              ),
            ],
          ),
        ),
      );
}