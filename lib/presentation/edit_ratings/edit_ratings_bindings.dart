import 'package:create_rostr/presentation/edit_ratings/edit_ratings_controller.dart';
import 'package:get/get.dart';

class EditRatingsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditRatingsController());
  }
}
