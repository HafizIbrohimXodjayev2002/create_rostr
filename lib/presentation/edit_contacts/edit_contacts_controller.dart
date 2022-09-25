import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:create_rostr/di/injection_extansion.dart';
import 'package:create_rostr/data/models/contacts/contacts.dart';
import 'package:create_rostr/data/local_source/local_source.dart';
import 'package:create_rostr/data/models/contacts_detail.dart/contacts_detail.dart';

class EditContactsController extends GetxController {
  /// Sevice Locator
  final _localSource = inject<LocalSource>();

  List<ContactsDetail>? contactsDetalList;
  ContactsInfo? contactsInfo;

  /// Controller for Save Contacts Detail
  TextEditingController contactPhoneEditingController = TextEditingController();
  TextEditingController contactLinkEditingController = TextEditingController();

  /// Focus Nodes for Save Contacts Detal
  FocusNode contactPhoneFocusNode = FocusNode();
  FocusNode contactLinkFocusNode = FocusNode();

  /// Contact's Name Detail Controllers
  List<TextEditingController>? contactNameEditingController;
  List<FocusNode>? contactNameFocusNode;

  /// Contact's UserLink Detail Controllers
  List<TextEditingController>? contactDetailLinkEditingController;
  List<FocusNode>? contactDetailLinkFocusNode;

  /// List for deleting contacts
  List<int> indexes = [];
  List<int> changedIndexes = [];
  List<int> changedIndexesUserLinks = [];

  @override
  void onInit() {
    super.onInit();

    /// Init Contact Detals and Info
    _initContactsInfoAndDetal();
  }

  void _initContactsInfoAndDetal() {
    contactsInfo = _localSource.getContacts();
    contactsDetalList = _localSource.getContactsDetail();

    contactLinkEditingController.value = TextEditingValue(text: contactsInfo?.link ?? '');
    contactPhoneEditingController.value = TextEditingValue(text: contactsInfo?.phoneNumber ?? '');

    /// Genrate contact's Name list TextEdtingController and FocusNode
    contactNameEditingController = List.generate(
      contactsDetalList?.length ?? 0,
      (index) => TextEditingController(),
    );

    contactNameFocusNode = List.generate(
      contactsDetalList?.length ?? 0,
      (index) => FocusNode(),
    );

    /// Genrate contact's userLink list TextEdtingController and FocusNode
    contactDetailLinkEditingController = List.generate(
      contactsDetalList?.length ?? 0,
      (index) => TextEditingController(),
    );

    contactDetailLinkFocusNode = List.generate(
      contactsDetalList?.length ?? 0,
      (index) => FocusNode(),
    );

    for (int i = 0; i < contactDetailLinkEditingController!.length; i++) {
      contactDetailLinkEditingController![i].value = TextEditingValue(text: contactsDetalList?[i].userLink ?? '');
      contactNameEditingController![i].value = TextEditingValue(text: contactsDetalList?[i].contactName ?? '');
    }
  }

  void onChangedContactNames(String value, int index) {
    if (!changedIndexes.contains(index)) {
      changedIndexes.add(index);
    }
  }

  void onChangedContactUserLinks(String value, int index) {
    if (!changedIndexesUserLinks.contains(index)) {
      changedIndexesUserLinks.add(index);
    }
  }

  void onRemoveContactDetail(int index) {
    indexes.add(index);
    contactsDetalList?.removeAt(index);

    update();
  }

  void saveChanges() async {
    for (int i = 0; i < indexes.length; i++) {
      await _localSource.removeContactDetail(indexes[i]);
    }

    for (int j = 0; j < changedIndexes.length; j++) {
       _localSource.updateContactDetal(
        ContactsDetail(
          contactName: contactNameEditingController?[changedIndexes[j]].text ?? '',
          userLink: contactDetailLinkEditingController?[changedIndexes[j]].text ?? '',
        ),
        changedIndexes[j],
      );
    }

    for (int k = 0; k < changedIndexesUserLinks.length; k++) {
      _localSource.updateContactDetal(
        ContactsDetail(
          contactName: contactNameEditingController?[changedIndexesUserLinks[k]].text ?? '',
          userLink: contactDetailLinkEditingController?[changedIndexesUserLinks[k]].text ?? '',
        ),
        changedIndexesUserLinks[k],
      );
    }

    _localSource.setContacts(ContactsInfo(
      link: contactLinkEditingController.text,
      phoneNumber: contactPhoneEditingController.text,
    ));

    Get.back(result: "refresh");

    /// GetX Snack Bar
    Get.snackbar(
      "Saved Contact",
      "Successfully saved",
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
}