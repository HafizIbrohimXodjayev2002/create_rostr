import 'package:create_rostr/components/bottom_sheets/bottom_sheets_widget.dart';
import 'package:create_rostr/components/buttons/icon_button_widget.dart';
import 'package:create_rostr/components/text_fields/create_rostr_text_field.dart';
import 'package:create_rostr/components/title_headers/title_headers.dart';
import 'package:create_rostr/data/models/contacts_detail.dart/contacts_detail.dart';
import 'package:create_rostr/presentation/edit_contacts/edit_contacts_bindings.dart';
import 'package:create_rostr/presentation/edit_contacts/edit_contacts_page.dart';
import 'package:create_rostr/presentation/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactsSectionWidget extends StatelessWidget {
  const ContactsSectionWidget({
    Key? key,
    required this.ctrl,
  }) : super(key: key);

  final HomeController ctrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleHeaders(
          titleLeft: "Contacts",
          rightWidget: TextButton(
            onPressed: () => ctrl.onNavigateEditContacts(),
            child: const Text(
              "Edit",
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 16),
                child: Text(
                  "Phone Number",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
              CreateRostrTextField(
                focusNode: ctrl.contactFocusNode,
                keyboardType: TextInputType.phone,
                controller: ctrl.contactEditingController,
                hintText: "Add phone number or other contacts",
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 16),
                child: Text(
                  "Snapchat",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
              CreateRostrTextField(
                focusNode: ctrl.linkFocusNode,
                controller: ctrl.linkEditingController,
                hintText: "Add a username",
              ),
            ],
          ),
        ),

        /// When user add new contact it will appear there
        const SizedBox(height: 4),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: ctrl.contactDetailsList?.length ?? 0,
          itemBuilder: ((context, index) {
            final contactDetail = ctrl.contactDetailsList?[index] ?? const ContactsDetail();
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 6),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    contactDetail.contactName ?? '',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    contactDetail.userLink ?? '',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
        const SizedBox(height: 12),
        IconButtonWidget(
          onPressed: () {
            CustomBottomSheetsWidget.bottomsheet(
              onPressed: () => ctrl.onSavedContactDetal(),
              title: "Create a Contact",
              subtitle: "Please, input a name of a new contact and a link",
              child1: CreateRostrTextField(
                controller: ctrl.contactNameEditingController,
                focusNode: ctrl.contactNameFocusNode,
                hintText: "Contact name e.g “Instagram”",
              ),
              child2: CreateRostrTextField(
                controller: ctrl.contactLinkEditingController,
                focusNode: ctrl.contactLinkFocusNode,
                hintText: "Link",
              ),
            );
          },
          title: "Add Contact",
        ),
      ],
    );
  }
}
