import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:create_rostr/theme/colors.dart';
import 'package:create_rostr/components/title_headers/title_headers.dart';
import 'package:create_rostr/components/buttons/custom_button_widget.dart';
import 'package:create_rostr/presentation/edit_ratings/edit_ratings_controller.dart';

import 'widgets/rating_button_widget.dart';

class EditRatingsPage extends GetView<EditRatingsController> {
  const EditRatingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text(
          "Quick Ratings Edit",
          style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
      body: GetBuilder<EditRatingsController>(builder: (ctrl) {
        return ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          children: [
            const TitleHeaders(
              titleLeft: "Ratings Settings",
            ),
            const SizedBox(height: 38),
            TitleHeaders(
              titleLeft: "Enable ratings",
              rightWidget: CupertinoSwitch(
                value: ctrl.isEnableRating,
                onChanged: ctrl.onChangedSwitcher,
                activeColor: AppColors.activeSwitch,
              ),
            ),
            const SizedBox(height: 24),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: ctrl.ratingsList!.length,
              itemBuilder: ((context, index) {
                final rated = ctrl.ratingsList![index];
                return RatingButton(
                  ctrl: ctrl,
                  indexRating: index,
                  rated: rated.rated ?? 0,
                );
              }),
            ),
          ],
        );
      }),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: CustomButtonWidget(
          onPressed: () => controller.onSaved(),
          title: "Save",
        ),
      ),
    );
  }
}