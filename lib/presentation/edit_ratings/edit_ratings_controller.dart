import 'package:create_rostr/data/local_source/local_source.dart';
import 'package:create_rostr/data/models/ratings/ratings.dart';
import 'package:create_rostr/di/injection_extansion.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditRatingsController extends GetxController {
  /// Service locator
  final _localSource = inject<LocalSource>();

  late bool isEnableRating;

  /// Ratings
  List<Ratings>? ratingsList;

  /// Taking all data about ratings
  List<int> ratedList = [];
  List<String> ratingNameList = [];
  List<int> indexes = [];

  @override
  void onInit() {
    super.onInit();

    isEnableRating = _localSource.getEnableRatings();

    /// Get Ratings
    _initRatings();
  }

  void onChangedSwitcher(bool value) {
    _localSource.setEnableRatings(value);
    isEnableRating = value;

    Get.back(result: "refresh");

    update();
  }

  void _initRatings() {
    ratingsList = _localSource.getRatings();
  }

  void onChangedRating(String ratingName, int rated, int index) {
    ratedList.add(rated);
    ratingNameList.add(ratingName);
    indexes.add(index);
  }

  void onSaved() {
    for (int i = 0; i < ratedList.length; i++) {
      _localSource.setRatings(
        Ratings(
          ratingName: ratingNameList[i],
          rated: ratedList[i],
        ),
        isUpdate: true,
        index: indexes[i],
      );
    }
    Get.back(result: "refresh");

    /// GetX Snack Bar
    Get.snackbar(
      "Saved Ratings",
      "Successfully saved",
      icon: const Icon(Icons.check, color: Colors.white),
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.green,
      borderRadius: 20,
      margin: const EdgeInsets.all(15),
      colorText: Colors.white,
      duration: const Duration(seconds: 2),
      isDismissible: true,
      dismissDirection: DismissDirection.horizontal,
      forwardAnimationCurve: Curves.easeOutBack,
    );
  }
}