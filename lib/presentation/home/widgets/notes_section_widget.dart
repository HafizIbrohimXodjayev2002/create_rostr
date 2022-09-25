import 'package:create_rostr/presentation/view_all/view_all_notes_page.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:create_rostr/presentation/home/home_controller.dart';
import 'package:create_rostr/components/buttons/icon_button_widget.dart';
import 'package:create_rostr/components/title_headers/title_headers.dart';
import 'package:create_rostr/components/bottom_sheets/bottom_sheets_widget.dart';
import 'package:create_rostr/components/text_fields/create_rostr_text_field.dart';

class NotesSectionWidget extends StatelessWidget {
  const NotesSectionWidget({
    Key? key,
    required this.ctrl,
  }) : super(key: key);

  final HomeController ctrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleHeaders(
          titleLeft: "Notes",
          rightWidget: TextButton(
            onPressed: () => Get.to(const ViewAllNotesPage()),
            child: const Text(
              "View All",
              style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: ((context, index) {
            final note = ctrl.notesList![index];
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
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
                    note.name ?? '',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    note.description ?? '',
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
              onPressed: () => ctrl.onSavedNotes(),
              title: "Create a Note",
              subtitle: "Please, input a name of a new note block",
              child1: CreateRostrTextField(
                controller: ctrl.noteNameEditingController,
                focusNode: ctrl.noteNameFocusNode,
                hintText: "Create note",
              ),
              child2: CreateRostrTextField(
                controller: ctrl.noteDescriptionEditingController,
                focusNode: ctrl.noteDescriptionFocusNode,
                hintText: "Create description",
              ),
            );
          },
          title: "Add Note",
        ),
      ],
    );
  }
}