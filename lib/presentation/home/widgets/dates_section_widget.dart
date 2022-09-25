import 'package:create_rostr/presentation/view_all/view_all_events_page.dart';
import 'package:flutter/material.dart';
import 'package:create_rostr/core/constants/constants.dart';
import 'package:create_rostr/presentation/home/home_controller.dart';
import 'package:create_rostr/core/utils/date_picker/date_picker.dart';
import 'package:create_rostr/components/buttons/icon_button_widget.dart';
import 'package:create_rostr/components/title_headers/title_headers.dart';
import 'package:create_rostr/components/bottom_sheets/bottom_sheets_widget.dart';
import 'package:create_rostr/components/text_fields/create_rostr_text_field.dart';
import 'package:create_rostr/presentation/home/widgets/custom_data_picker_widget.dart';
import 'package:get/get.dart';

class DatesSectionWidget extends StatelessWidget {
  const DatesSectionWidget({
    Key? key,
    required this.ctrl,
  }) : super(key: key);

  final HomeController ctrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleHeaders(
          titleLeft: "Dates",
          rightWidget: TextButton(
            onPressed: () => Get.to(const ViewAllEventsPage()),
            child: const Text(
              "View All",
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 1,
          itemBuilder: ((context, index) {
            final date = ctrl.datesList![index];
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        date.eventName ?? '',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        date.dataOfEvent ?? '',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    date.description ?? '',
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
              onPressed: () => ctrl.onSaveDateEvent(),
              title: "Create a Date",
              subtitle: "Please, input a date, heading and description of the event ",
              child1: GetBuilder<HomeController>(
                builder: (ctrl2) {
                  return CustomDataPickerWidget(
                    hintText: "Date of event (MM/DD/YY)",
                    title: ctrl2.eventData,
                    onPressed: () {
                      DatePicker.showDatePicker(
                        context,
                        minDateTime: Constants.minDate,
                        maxDateTime: Constants.maxDate,
                        dateFormat: Constants.dayMonthYearFormat.pattern,
                        initialDateTime: DateTime.now(),
                        onConfirm: (date, ls) => ctrl2.onConfirmDataOfBirthInEvent(date),
                      );
                    },
                  );
                }
              ),
              child2: CreateRostrTextField(
                controller: ctrl.eventNameEditingController,
                focusNode: ctrl.eventNameFocusNode,
                hintText: "Heading - name",
              ),
              child3: CreateRostrTextField(
                controller: ctrl.eventDescriptionEditingController,
                focusNode: ctrl.eventDescriptionFocusNode,
                hintText: "Description",
              ),
            );
          },
          title: "Add Date",
        ),
      ],
    );
  }
}