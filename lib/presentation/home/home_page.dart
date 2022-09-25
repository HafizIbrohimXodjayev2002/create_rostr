import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';
import 'package:create_rostr/theme/colors.dart';
import 'package:create_rostr/core/constants/constants.dart';
import 'package:create_rostr/presentation/home/home_controller.dart';
import 'package:create_rostr/core/utils/date_picker/date_picker.dart';
import 'package:create_rostr/components/title_headers/title_headers.dart';
import 'package:create_rostr/components/buttons/custom_button_widget.dart';
import 'package:create_rostr/presentation/home/widgets/dates_section_widget.dart';
import 'package:create_rostr/components/text_fields/create_rostr_text_field.dart';
import 'package:create_rostr/presentation/home/widgets/notes_section_widget.dart';
import 'package:create_rostr/presentation/home/widgets/ratings_section_widget.dart';
import 'package:create_rostr/presentation/home/widgets/contacts_section_widget.dart';
import 'package:create_rostr/presentation/home/widgets/custom_data_picker_widget.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_rounded,
              size: 24,
              color: Colors.black,
            ),
          ),
        ],
        title: const Text(
          "Create a rostr",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: GetBuilder<HomeController>(
        builder: ((ctrl) {
          return ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            children: [
              /// Personal Info
              const TitleHeaders(
                titleLeft: "Personal Info",
              ),
              const SizedBox(height: 12),

              /// Name Text field
              CreateRostrTextField(
                hintText: "Name",
                focusNode: ctrl.nameFocusNode,
                controller: ctrl.nameEditingController,
              ),
              const SizedBox(height: 12),

              /// Data Picker
              CustomDataPickerWidget(
                hintText: "Data of birth",
                title: ctrl.dataOfBirth,
                onPressed: () {
                  DatePicker.showDatePicker(
                    context,
                    minDateTime: Constants.minDate,
                    maxDateTime: Constants.maxDate,
                    dateFormat: Constants.dayMonthYearFormat.pattern,
                    initialDateTime: ctrl.selectedDateFromDatePicker ?? ctrl.initialDate,
                    onConfirm: (date, ls) => ctrl.onConfirmDataOfBirth(date),
                  );
                },
              ),
              const SizedBox(height: 12),

              /// Where we met Text Field
              CreateRostrTextField(
                hintText: "Where we met",
                focusNode: ctrl.descriptionFocusNode,
                controller: ctrl.descriptionEditingController,
              ),
              const SizedBox(height: 20),

              /// Enable ratings Switcher
              Visibility(
                visible: !ctrl.isEnableRating,
                child: TitleHeaders(
                  titleLeft: "Enable ratings",
                  rightWidget: CupertinoSwitch(
                    value: ctrl.isEnableRating,
                    onChanged: ctrl.onChangedSwitcher,
                    activeColor: AppColors.activeSwitch,
                  ),
                ),
              ),
              const SizedBox(height: 8),

              /// Ratings section
              RatingsSectionWidget(ctrl: ctrl),
              const SizedBox(height: 12),

              /// Notes Section
              NotesSectionWidget(ctrl: ctrl),
              const SizedBox(height: 12),

              /// Contacts Section
              ContactsSectionWidget(ctrl: ctrl),
              const SizedBox(height: 12),

              /// Dates Section
              DatesSectionWidget(ctrl: ctrl),
              const SizedBox(height: 12),

              /// Create Button
              CustomButtonWidget(
                onPressed: ctrl.saveRostr,
                title: "Create",
              ),
            ],
          );
        }),
      ),
    );
  }
}