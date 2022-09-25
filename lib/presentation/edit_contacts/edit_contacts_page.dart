import 'package:create_rostr/components/buttons/custom_button_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:create_rostr/theme/colors.dart';
import 'package:create_rostr/components/title_headers/title_headers.dart';
import 'package:create_rostr/components/text_fields/create_rostr_text_field.dart';
import 'package:create_rostr/presentation/edit_contacts/edit_contacts_controller.dart';

class EditContactsPage extends GetView<EditContactsController> {
  const EditContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text(
          "Contacts Quick Edit",
          style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
      body: GetBuilder<EditContactsController>(
        builder: ((ctrl) {
          return ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            children: [
              const TitleHeaders(
                titleLeft: "Phone Number",
              ),
              const SizedBox(height: 16),
              CreateRostrTextField(
                keyboardType: TextInputType.phone,
                controller: ctrl.contactPhoneEditingController,
                focusNode: ctrl.contactPhoneFocusNode,
                hintText: "Phone",
              ),
              const SizedBox(height: 36),
              const TitleHeaders(
                titleLeft: "Snapchat",
              ),
              const SizedBox(height: 16),
              CreateRostrTextField(
                controller: ctrl.contactLinkEditingController,
                focusNode: ctrl.contactLinkFocusNode,
                hintText: "Link",
              ),
              const SizedBox(height: 12),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: ctrl.contactsDetalList?.length ?? 0,
                itemBuilder: ((context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TitleHeaders(
                        titleLeft: "Custom Contacts",
                        rightWidget: TextButton(
                          onPressed: () => ctrl.onRemoveContactDetail(index),
                          child: const Text(
                            "Delete",
                            style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      CreateRostrTextField(
                        onChanged: (value) => ctrl.onChangedContactNames(value, index),
                        controller: ctrl.contactNameEditingController![index],
                        focusNode: ctrl.contactNameFocusNode![index],
                        hintText: "Contact name",
                      ),
                      const SizedBox(height: 12),
                      CreateRostrTextField(
                        onChanged: (value) => ctrl.onChangedContactUserLinks(value, index),
                        controller: ctrl.contactDetailLinkEditingController![index],
                        focusNode: ctrl.contactDetailLinkFocusNode![index],
                        hintText: "User link",
                      ),
                    ],
                  );
                }),
              ),
            ],
          );
        }),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: CustomButtonWidget(
          onPressed: () => controller.saveChanges(),
          title: "Save changes",
        ),
      ),
    );
  }
}
