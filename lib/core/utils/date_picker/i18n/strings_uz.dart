part of 'date_picker_i18n.dart';

/// Russian (RU)
class _StringsUz extends _StringsI18n {
  const _StringsUz();

  @override
  String getCancelText() {
    return 'Bekor qilish';
  }

  @override
  String getDoneText() {
    return 'Tayyor';
  }

  @override
  List<String> getMonths() {
    return [
      "Январь",
      "Февраль",
      "Март",
      "Апрель",
      "Май",
      "Июнь",
      "Июль",
      "Август",
      "Сентябрь",
      "Октябрь",
      "Ноябрь",
      "Декабрь",
    ];
  }

  @override
  List<String> getWeeksFull() {
    return [
      "Понедельник",
      "Вторник",
      "Среда",
      "Четверг",
      "Пятница",
      "Суббота",
      "Воскресенье",
    ];
  }

  @override
  List<String> getWeeksShort() {
    return [
      "пн",
      "вт",
      "ср",
      "чт",
      "пт",
      "сб",
      "вс",
    ];
  }

  @override
  List<String>? getMonthsShort() {
    // TODO: implement getMonthsShort
    return null;
  }
}
