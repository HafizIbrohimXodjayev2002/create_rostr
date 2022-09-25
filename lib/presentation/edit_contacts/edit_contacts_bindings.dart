import 'package:create_rostr/presentation/edit_contacts/edit_contacts_controller.dart';
import 'package:get/get.dart';

class EditContactsBindigs extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditContactsController());
  }
}