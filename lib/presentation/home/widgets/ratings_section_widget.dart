import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:create_rostr/presentation/home/home_controller.dart';
import 'package:create_rostr/components/buttons/icon_button_widget.dart';
import 'package:create_rostr/components/buttons/rated_button_widgte.dart';
import 'package:create_rostr/components/title_headers/title_headers.dart';
import 'package:create_rostr/components/bottom_sheets/bottom_sheets_widget.dart';
import 'package:create_rostr/components/text_fields/create_rostr_text_field.dart';

class RatingsSectionWidget extends StatelessWidget {
  const RatingsSectionWidget({Key? key, required this.ctrl}) : super(key: key);

  final HomeController ctrl;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: ctrl.isEnableRating,
      child: Column(
        children: [
          /// Ratings Section
          TitleHeaders(
            titleLeft: "Ratings",
            rightWidget: TextButton(
              onPressed: ctrl.onNavigate,
              child: const Text(
                "Edit",
                style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 40,
            padding: const EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Expanded(
                  child: Text(
                    "Overall Rating",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  ctrl.overAll.toStringAsFixed(2),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 6),
                const Icon(
                  Icons.star,
                  size: 28,
                  color: Colors.yellow,
                )
              ],
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 18,
            runSpacing: 12,
            crossAxisAlignment: WrapCrossAlignment.end,
            children: [
              for (int i = 0; i < ctrl.ratingsList!.length; i++)
                GestureDetector(
                  onTap: () {
                    ctrl.onChangedRatingCount(i);
                    CustomBottomSheetsWidget.bottomsheet(
                      onPressed: () => ctrl.onUpdateRatingCount(i),
                      title: ctrl.ratingsList?[i].ratingName ?? '',
                      subtitle: "Please, rate this rostrs “Looks” rating using stars below",
                      child1: RatedButtonWidget(
                        ratingCount: ctrl.updateRatingCount,
                      ),
                    );
                  },
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 2.3,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            ctrl.ratingsList?[i].ratingName ?? "",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          ctrl.ratingsList?[i].rated.toString() ?? '',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            fontWeight: FontWeight.w400,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        const Icon(
                          Icons.chevron_right_sharp,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 18),
          IconButtonWidget(
            onPressed: () {
              CustomBottomSheetsWidget.bottomsheet(
                onPressed: () {
                  if (ctrl.ratingNameEditingController.text.isEmpty) {
                    Get.snackbar(
                      "Error",
                      "Please enter rating name",
                      icon: const Icon(Icons.check, color: Colors.white),
                      snackPosition: SnackPosition.TOP,
                      backgroundColor: Colors.red,
                      borderRadius: 20,
                      margin: const EdgeInsets.all(15),
                      colorText: Colors.white,
                      duration: const Duration(seconds: 2),
                      isDismissible: true,
                      dismissDirection: DismissDirection.horizontal,
                      forwardAnimationCurve: Curves.easeOutBack,
                    );
                  } else {
                    Get.back();
                    CustomBottomSheetsWidget.bottomsheet(
                      onPressed: () => ctrl.onPressedSaveRating(),
                      title: "Looks Rating",
                      subtitle: "Please, rate this rostrs “Looks” rating using stars below",
                      child1: RatedButtonWidget(
                        ratingCount: ctrl.ratingCount,
                      ),
                    );
                  }
                },
                title: "Create a Rating",
                subtitle: "Please, input a name of a new rating categorie",
                child1: CreateRostrTextField(
                  controller: ctrl.ratingNameEditingController,
                  focusNode: ctrl.ratingNameFocusNode,
                  hintText: "Create rating",
                ),
              );
            },
            title: "Add Rating",
          ),
        ],
      ),
    );
  }
}
