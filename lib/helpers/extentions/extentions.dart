import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension CustomPadding on num {
  SizedBox get vs => SizedBox(height: toDouble().h);
  SizedBox get hs => SizedBox(width: toDouble().w);
}

extension NavigationExtensions on BuildContext {
  void pushNamedRoute(String routeName) {
    Navigator.pushNamed(
      this,
      routeName,
    );
  }
}

extension NavigationExtension on NavigatorState {
  Future pushScreen(Widget screen) async {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return screen;
        },
      ),
    );
  }
}

extension NewCustomPadding on num {
  SizedBox vspacing(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double padding = toDouble() * screenHeight / 100.0;
    return SizedBox(height: padding / MediaQuery.of(context).devicePixelRatio);
  }

  SizedBox hspacing(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double padding = toDouble() * screenWidth / 100.0;
    return SizedBox(width: padding / MediaQuery.of(context).devicePixelRatio);
  }
}

extension CustomDateTimeExtension on String {
  String parseAndFormatCustomDateTime() {
    try {
      List<String> parts = this.split(' ');

      String datePart = parts[0];
      String timePart = parts[1];

      List<String> dateParts = datePart.split('-');
      List<String> timeParts = timePart.split(':');

      String monthName = _getMonthName(int.parse(dateParts[1]));
      String hourMinute = '${timeParts[0]}:${timeParts[1]}';

      return '$monthName ${dateParts[2]}, $hourMinute';
    } catch (e) {
      print('Error parsing custom date-time: $e');
      return '';
    }
  }

  String _getMonthName(int month) {
    switch (month) {
      case 1:
        return 'January';
      case 2:
        return 'February';
      case 3:
        return 'March';
      case 4:
        return 'April';
      case 5:
        return 'May';
      case 6:
        return 'June';
      case 7:
        return 'July';
      case 8:
        return 'August';
      case 9:
        return 'September';
      case 10:
        return 'October';
      case 11:
        return 'November';
      case 12:
        return 'December';
      default:
        return '';
    }
  }
}

void main() {
  String dateTimeString = "2023-04-21 15:14:11 PM";
  String formattedDateTime = dateTimeString.parseAndFormatCustomDateTime();
  print(formattedDateTime); // Output: April 21 15:14
}
