import 'package:create_rostr/data/models/contacts_detail.dart/contacts_detail.dart';
import 'package:create_rostr/data/models/personal_info/personal_info.dart';
import 'package:create_rostr/data/models/contacts/contacts.dart';
import 'package:create_rostr/data/models/ratings/ratings.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:create_rostr/data/models/dates/dates.dart';
import 'package:create_rostr/data/models/notes/notes.dart';
import 'dart:convert';

class LocalSourceKeys {
  static String notes = "notes";
  static String dates = "dates";
  static String ratings = "ratings";
  static String contacts = "contacts";
  static String personalInfo = "personal_info";
  static String enableRatings = "enable_ratings";
  static String contactDetail = "contacts_detail";
}

class LocalSource {
  final SharedPreferences prefes;

  LocalSource(this.prefes);

  /// For Ratings Enable or Disable
  bool getEnableRatings() => prefes.getBool(LocalSourceKeys.enableRatings) ?? false;

  Future<void> setEnableRatings(bool isEnable) async {
    await prefes.setBool(LocalSourceKeys.enableRatings, isEnable);
  }

  /// For Personal Info
  Future<void> setPersonalInfo(PersonalInfo personalInfo) async {
    String personalInfoEncode = jsonEncode(personalInfo);
    await prefes.setString(LocalSourceKeys.personalInfo, personalInfoEncode);
  }

  PersonalInfo getPersonalInfo() {
    final personalInfoData = prefes.getString(LocalSourceKeys.personalInfo);
    if (personalInfoData?.isNotEmpty ?? false) {
      Map<String, dynamic> personalInfoDecode = jsonDecode(personalInfoData ?? "");
      PersonalInfo personalInfo = PersonalInfo.fromJson(personalInfoDecode);
      return personalInfo;
    } else {
      return const PersonalInfo();
    }
  }

  /// For Notes
  Future<void> setNotes(Notes notes) async {
    List<String>? notesList = prefes.getStringList(LocalSourceKeys.notes) ?? [];
    String notesEncode = jsonEncode(notes);
    notesList.add(notesEncode);
    await prefes.setStringList(LocalSourceKeys.notes, notesList);
  }

  List<Notes> getNotes() {
    List<String>? notesData = prefes.getStringList(LocalSourceKeys.notes);
    List<Notes> notes = [];
    if (notesData?.isNotEmpty ?? false) {
      notesData?.forEach((element) {
        Map<String, dynamic> notesDecode = jsonDecode(element);
        Notes notesElement = Notes.fromJson(notesDecode);
        notes.add(notesElement);
      });
    }
    return notes;
  }

  /// For Contacts
  Future<void> setContacts(ContactsInfo contactsInfo) async {
    String contactInfoEncode = jsonEncode(contactsInfo);
    await prefes.setString(LocalSourceKeys.contacts, contactInfoEncode);
  }

  ContactsInfo getContacts() {
    final contactsInfoData = prefes.getString(LocalSourceKeys.contacts);
    if (contactsInfoData?.isNotEmpty ?? false) {
      Map<String, dynamic> contactsInfoDecode = jsonDecode(contactsInfoData ?? '');
      ContactsInfo contactsInfo = ContactsInfo.fromJson(contactsInfoDecode);
      return contactsInfo;
    } else {
      return const ContactsInfo();
    }
  }

  /// For Contacts Detail
  Future<void> setContactsDetail(ContactsDetail contactsDetail) async {
    List<String>? contactDetailList = prefes.getStringList(LocalSourceKeys.contactDetail) ?? [];
    String contactDetailEncode = jsonEncode(contactsDetail);
    contactDetailList.add(contactDetailEncode);
    await prefes.setStringList(LocalSourceKeys.contactDetail, contactDetailList);
  }

  List<ContactsDetail> getContactsDetail() {
    final List<String>? contactsDetailData = prefes.getStringList(LocalSourceKeys.contactDetail);
    List<ContactsDetail> contactsDetail = [];
    if (contactsDetailData?.isNotEmpty ?? false) {
      contactsDetailData?.forEach((element) {
        Map<String, dynamic> contactsDetailDecode = jsonDecode(element);
        ContactsDetail contactsDetailElement = ContactsDetail.fromJson(contactsDetailDecode);
        contactsDetail.add(contactsDetailElement);
      });
    }
    return contactsDetail;
  }

  /// For Dates
  Future<void> setDates(Dates dates) async {
    List<String>? datesList = prefes.getStringList(LocalSourceKeys.dates) ?? [];
    String datesEncode = jsonEncode(dates);
    datesList.add(datesEncode);
    await prefes.setStringList(LocalSourceKeys.dates, datesList);
  }

  List<Dates> getDates() {
    List<String>? datesData = prefes.getStringList(LocalSourceKeys.dates);
    List<Dates> dates = [];
    if (datesData?.isNotEmpty ?? false) {
      datesData?.forEach((element) {
        Map<String, dynamic> datesDecode = jsonDecode(element);
        Dates datesElement = Dates.fromJson(datesDecode);
        dates.add(datesElement);
      });
    }
    return dates;
  }

  /// For Ratings
  Future<void> setRatings(Ratings ratings, {bool? isUpdate, int? index}) async {
    List<String> ratingsList = prefes.getStringList(LocalSourceKeys.ratings) ?? [];
    if (isUpdate ?? false) {
      ratingsList.removeAt(index ?? 0);
      String ratingEncode = jsonEncode(ratings);
      ratingsList.insert(index ?? 0, ratingEncode);
      await prefes.setStringList(LocalSourceKeys.ratings, ratingsList);
    } else {
      String ratingEncode = jsonEncode(ratings);
      ratingsList.add(ratingEncode);
      await prefes.setStringList(LocalSourceKeys.ratings, ratingsList);
    }
  }

  List<Ratings> getRatings() {
    List<String>? ratingsData = prefes.getStringList(LocalSourceKeys.ratings);
    List<Ratings> ratings = [];
    if (ratingsData?.isNotEmpty ?? false) {
      ratingsData?.forEach((element) {
        Map<String, dynamic> ratingsDecode = jsonDecode(element);
        Ratings ratingsElement = Ratings.fromJson(ratingsDecode);
        ratings.add(ratingsElement);
      });
    }
    return ratings;
  }

  /// For removing contact detal specific item
  Future<void> removeContactDetail(int index) async {
    List<String> contactDetailList = prefes.getStringList(LocalSourceKeys.contactDetail) ?? [];
    contactDetailList.forEach(print);
    contactDetailList.removeAt(index);
    await prefes.setStringList(LocalSourceKeys.contactDetail, contactDetailList);
  }

  /// For updating contact detal specific item
  Future<void> updateContactDetal(ContactsDetail contactsDetail, int index) async {
    List<String> contactDetailList = prefes.getStringList(LocalSourceKeys.contactDetail) ?? [];

    contactDetailList.removeAt(index);
    String contactDetailEncode = jsonEncode(contactsDetail);
    contactDetailList.insert(index, contactDetailEncode);
    await prefes.setStringList(LocalSourceKeys.contactDetail, contactDetailList);
  }
}
