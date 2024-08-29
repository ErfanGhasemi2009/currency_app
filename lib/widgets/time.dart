import 'package:intl/intl.dart';

class Time{
  String getTime() {
    DateTime dateTime = DateTime.now();
    return DateFormat('kk:mm:ss').format(dateTime);
  }
}