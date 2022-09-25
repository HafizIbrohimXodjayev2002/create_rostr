import 'package:create_rostr/presentation/home/home_controller.dart';
import 'package:create_rostr/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RatedButtonWidget extends StatefulWidget {
  const RatedButtonWidget({Key? key}) : super(key: key);

  @override
  RatedButtonWidgetState createState() => RatedButtonWidgetState();
}

class RatedButtonWidgetState extends State<RatedButtonWidget> {
  final ctrl = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6,
      runSpacing: 8,
      children: List.generate(
        10,
        (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                ctrl.ratingCount = index + 1;
              });
            },
            child: Container(
              height: 40,
              width: 70,
              decoration: BoxDecoration(
                color: index < ctrl.ratingCount ? AppColors.ratingButton : AppColors.deactiveRatingButton,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: index < ctrl.ratingCount ? Colors.white : Colors.grey.withOpacity(0.7),
                    size: 20,
                  ),
                  Text(
                    "${index + 1}",
                    style: TextStyle(
                      color: index < ctrl.ratingCount ? Colors.white : Colors.grey.withOpacity(0.7),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
