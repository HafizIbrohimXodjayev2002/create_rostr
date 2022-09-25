import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:create_rostr/di/injection_extansion.dart';
import 'package:create_rostr/data/models/notes/notes.dart';
import 'package:create_rostr/data/models/dates/dates.dart';
import 'package:create_rostr/core/constants/constants.dart';
import 'package:create_rostr/data/models/ratings/ratings.dart';
import 'package:create_rostr/data/models/contacts/contacts.dart';
import 'package:create_rostr/data/local_source/local_source.dart';
import 'package:create_rostr/data/models/personal_info/personal_info.dart';
import 'package:create_rostr/presentation/edit_ratings/edit_ratings_page.dart';
import 'package:create_rostr/presentation/edit_contacts/edit_contacts_page.dart';
import 'package:create_rostr/presentation/edit_ratings/edit_ratings_bindings.dart';
import 'package:create_rostr/data/models/contacts_detail.dart/contacts_detail.dart';
import 'package:create_rostr/presentation/edit_contacts/edit_contacts_bindings.dart';

class HomeController extends GetxController {
  /// Controllers for Personal Info form fields
  TextEditingController nameEditingController = TextEditingController();
  TextEditingController descriptionEditingController = TextEditingController();

  /// Focus Nodes for Personal Info form fields
  FocusNode nameFocusNode = FocusNode();
  FocusNode descriptionFocusNode = FocusNode();

  /// Controllers for Contacts form fields
  TextEditingController linkEditingController = TextEditingController();
  TextEditingController contactEditingController = TextEditingController();

  /// Focus Nodes for Contacts form form fields
  FocusNode linkFocusNode = FocusNode();
  FocusNode contactFocusNode = FocusNode();

  /// Controller for Save Rating Name
  TextEditingController ratingNameEditingController = TextEditingController();

  /// Focus Nodes for Save Rating Name
  FocusNode ratingNameFocusNode = FocusNode();

  /// Controller for Save Notes
  TextEditingController noteNameEditingController = TextEditingController();
  TextEditingController noteDescriptionEditingController = TextEditingController();

  /// Focus Nodes for Save Note
  FocusNode noteNameFocusNode = FocusNode();
  FocusNode noteDescriptionFocusNode = FocusNode();

  /// Controller for Save Contacts Detail
  TextEditingController contactNameEditingController = TextEditingController();
  TextEditingController contactLinkEditingController = TextEditingController();

  /// Focus Nodes for Save Contacts Detal
  FocusNode contactNameFocusNode = FocusNode();
  FocusNode contactLinkFocusNode = FocusNode();

  /// Controller for Save Dates events
  TextEditingController eventNameEditingController = TextEditingController();
  TextEditingController eventDescriptionEditingController = TextEditingController();

  /// Focus Nodes for Save Dates events
  FocusNode eventNameFocusNode = FocusNode();
  FocusNode eventDescriptionFocusNode = FocusNode();

  /// Create Rating count
  int ratingCount = 0;

  /// Service locator
  final _localSource = inject<LocalSource>();

  /// Personal Info
  String? dataOfBirth;
  PersonalInfo? personalInfo;

  /// Rating Info
  late bool isEnableRating;
  List<Ratings>? ratingsList;

  /// Notes Info
  List<Notes>? notesList;

  /// Events Info
  List<Dates>? datesList;

  /// Contact Info
  ContactsInfo? contactsInfo;

  /// Contact Details
  List<ContactsDetail>? contactDetailsList;

  /// Date Time
  DateTime? selectedDateFromDatePicker;

  /// Date Time Initial Value
  DateTime? initialDate;

  /// Overall Rating
  double overAll = 0;

  /// Selected Date in created event
  DateTime? selectedDateFromDatePickerInEvent;

  /// Event data in created event
  String? eventData;

  @override
  void onInit() {
    super.onInit();

    /// Initial Value of Personal Info
    _initPersonalInfo();

    /// Rating Switcher value
    isEnableRating = _localSource.getEnableRatings();

    /// Initial Value Of Rating
    _initRatings();

    /// Initial Value of Notes
    _initNotes();

    /// Initial Value of Dates
    _initEvents();

    /// Initial Value of Contact Info
    _initContactInfo();

    /// Initial Value of Contact Details
    _initContactDetails();

    /// Initial Overall Rating Value
    _overallRating();
  }

  void _initContactDetails() {
    contactDetailsList = _localSource.getContactsDetail();
  }

  void _initContactInfo() {
    contactsInfo = _localSource.getContacts();
    contactEditingController.value = TextEditingValue(text: contactsInfo?.phoneNumber ?? '');
    linkEditingController.value = TextEditingValue(text: contactsInfo?.link ?? '');
  }

  void _initPersonalInfo() {
    personalInfo = _localSource.getPersonalInfo();
    nameEditingController.value = TextEditingValue(text: personalInfo?.name ?? '');
    descriptionEditingController.value = TextEditingValue(text: personalInfo?.description ?? '');
    try {
      dataOfBirth = personalInfo?.dataOfBirth;

      initialDate = Constants.dayMonthYearFormat.parse(dataOfBirth?.substring(0, 10) ?? '');
    } catch (e) {
      return;
    }
  }

  void _initRatings() {
    ratingsList = _localSource.getRatings();
    if (ratingsList?.isEmpty ?? false) {
      _localSource.setRatings(const Ratings(rated: 0, ratingName: "Looks"));
      _localSource.setRatings(const Ratings(rated: 0, ratingName: "Personality"));
      _localSource.setRatings(const Ratings(rated: 0, ratingName: "Interest Level"));
      _localSource.setRatings(const Ratings(rated: 0, ratingName: "Humor"));
      _localSource.setRatings(const Ratings(rated: 0, ratingName: "Compatibility"));
      ratingsList = _localSource.getRatings();
    }
  }

  void _initNotes() {
    notesList = _localSource.getNotes();
    if (notesList?.isEmpty ?? false) {
      _localSource
          .setNotes(const Notes(name: "General notes", description: "Write some general notes about this person"));
      _localSource.setNotes(const Notes(name: "Likes 👍", description: "Write things that this person likes"));
      _localSource.setNotes(const Notes(name: "Dislikes 👎", description: "Write things that this person dislikes"));
      _localSource.setNotes(const Notes(name: "Pros 🟢", description: "Write things that YOU like about this person"));
      _localSource
          .setNotes(const Notes(name: "Cons 🔴", description: "Write things that you consider drawbacks / red flags"));
      notesList = _localSource.getNotes();
    }
  }

  void _initEvents() {
    datesList = _localSource.getDates();
    if (datesList?.isEmpty ?? false) {
      _localSource.setDates(
        const Dates(
          eventName: "Event",
          dataOfEvent: "12/12/2022",
          description:
              "This section allows you to add events that take place between you and this person, such as a first kiss, dates, and other events. Created events will also be saved to your calendar in the Rostr Tools section.",
        ),
      );
      datesList = _localSource.getDates();
    }
  }

  void onChangedSwitcher(bool value) {
    _localSource.setEnableRatings(value);
    isEnableRating = value;

    update();
  }

  /// Method for formatting data
  void onConfirmDataOfBirth(DateTime date) async {
    selectedDateFromDatePicker = date;
    dataOfBirth = Constants.dayMonthYearFormat.format(date);

    update();
  }

  /// Method for formatting data
  void onConfirmDataOfBirthInEvent(DateTime date) async {
    selectedDateFromDatePickerInEvent = date;
    eventData = Constants.dayMonthYearFormat.format(date);

    update();
  }

  /// Save Button Method
  void saveRostr() {
    /// Save Personal Info
    _localSource.setPersonalInfo(
      PersonalInfo(
        dataOfBirth: dataOfBirth,
        description: descriptionEditingController.text,
        name: nameEditingController.text,
      ),
    );

    /// Save Contacts
    _localSource.setContacts(
      ContactsInfo(
        link: linkEditingController.text,
        phoneNumber: contactEditingController.text,
      ),
    );

    /// GetX Snack Bar
    Get.snackbar(
      "Created Rostr",
      "Successfully created",
      icon: const Icon(Icons.check, color: Colors.white),
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.green,
      borderRadius: 20,
      margin: const EdgeInsets.all(15),
      colorText: Colors.white,
      duration: const Duration(seconds: 4),
      isDismissible: true,
      dismissDirection: DismissDirection.horizontal,
      forwardAnimationCurve: Curves.easeOutBack,
    );
  }

  void _overallRating() {
    for (int i = 0; i < ratingsList!.length; i++) {
      overAll += ratingsList![i].rated!;
    }
    overAll = overAll / ratingsList!.length;
  }

  void onNavigate() async {
    final result = await Get.to(const EditRatingsPage(), binding: EditRatingsBindings());
    if (result != null) {
      isEnableRating = _localSource.getEnableRatings();
      ratingsList = _localSource.getRatings();
      overAll = 0.0;
      _overallRating();
      update();
    }
  }

  void onPressedSaveRating() async {
    _localSource.setRatings(
      Ratings(rated: ratingCount, ratingName: ratingNameEditingController.text),
    );
    ratingCount = 0;
    ratingNameEditingController.text = '';
    ratingsList = _localSource.getRatings();

    Get.back();

    /// GetX Snack Bar
    Get.snackbar(
      "Created Rating",
      "Successfully created rating",
      icon: const Icon(Icons.check, color: Colors.white),
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.green,
      borderRadius: 20,
      margin: const EdgeInsets.all(15),
      colorText: Colors.white,
      duration: const Duration(seconds: 4),
      isDismissible: true,
      dismissDirection: DismissDirection.horizontal,
      forwardAnimationCurve: Curves.easeOutBack,
    );

    update();
  }

  void onSavedNotes() {
    if (noteNameEditingController.text.isNotEmpty || noteDescriptionEditingController.text.isNotEmpty) {
      _localSource.setNotes(Notes(
        description: noteDescriptionEditingController.text,
        name: noteNameEditingController.text,
      ));

      noteDescriptionEditingController.text = '';
      noteNameEditingController.text = '';

      notesList = _localSource.getNotes();

      Get.back();

      /// GetX Snack Bar
      Get.snackbar(
        "Created Note",
        "Successfully created note",
        icon: const Icon(Icons.check, color: Colors.white),
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green,
        borderRadius: 20,
        margin: const EdgeInsets.all(15),
        colorText: Colors.white,
        duration: const Duration(seconds: 4),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
      );

      update();
    } else {
      /// GetX Snack Bar
      Get.snackbar(
        "Error",
        "Please add name or description",
        icon: const Icon(Icons.check, color: Colors.white),
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        borderRadius: 20,
        margin: const EdgeInsets.all(15),
        colorText: Colors.white,
        duration: const Duration(seconds: 4),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
      );
    }
  }

  void onSavedContactDetal() {
    if (contactNameEditingController.text.isNotEmpty || contactLinkEditingController.text.isNotEmpty) {
      _localSource.setContactsDetail(ContactsDetail(
        contactName: contactNameEditingController.text,
        userLink: contactLinkEditingController.text,
      ));

      contactNameEditingController.text = '';
      contactLinkEditingController.text = '';

      contactDetailsList = _localSource.getContactsDetail();

      Get.back();

      /// GetX Snack Bar
      Get.snackbar(
        "Created contact detals",
        "Successfully created contact detals",
        icon: const Icon(Icons.check, color: Colors.white),
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green,
        borderRadius: 20,
        margin: const EdgeInsets.all(15),
        colorText: Colors.white,
        duration: const Duration(seconds: 4),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
      );

      update();
    } else {
      /// GetX Snack Bar
      Get.snackbar(
        "Error",
        "Please add name and link",
        icon: const Icon(Icons.check, color: Colors.white),
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        borderRadius: 20,
        margin: const EdgeInsets.all(15),
        colorText: Colors.white,
        duration: const Duration(seconds: 4),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
      );
    }
  }

  void onNavigateEditContacts() async {
    final result = await Get.to(const EditContactsPage(), binding: EditContactsBindigs());
    if (result != null) {
      contactDetailsList = _localSource.getContactsDetail();
      contactsInfo = _localSource.getContacts();

      contactEditingController.value = TextEditingValue(text: contactsInfo?.link ?? '');
      linkEditingController.value = TextEditingValue(text: contactsInfo?.phoneNumber ?? '');

      update();
    }
  }

  void onSaveDateEvent() {
    if (eventNameEditingController.text.isNotEmpty && eventData != null) {
      _localSource.setDates(Dates(
          dataOfEvent: eventData,
          description: eventDescriptionEditingController.text,
          eventName: eventNameEditingController.text));

      eventDescriptionEditingController.text = '';
      eventNameEditingController.text = '';
      eventData = null;

      datesList = _localSource.getDates();

      Get.back();

      /// GetX Snack Bar
      Get.snackbar(
        "Created event",
        "Successfully created event detals",
        icon: const Icon(Icons.check, color: Colors.white),
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green,
        borderRadius: 20,
        margin: const EdgeInsets.all(15),
        colorText: Colors.white,
        duration: const Duration(seconds: 4),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
      );

      update();
    } else {
      /// GetX Snack Bar
      Get.snackbar(
        "Error",
        "Please add name and event data",
        icon: const Icon(Icons.check, color: Colors.white),
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        borderRadius: 20,
        margin: const EdgeInsets.all(15),
        colorText: Colors.white,
        duration: const Duration(seconds: 4),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
      );
    }
  }
}