import 'package:loynova_app/core/network/api_strings.dart';
import 'package:loynova_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension AppStrings on String {
  String truncateToChars(int maxChars) {
    String truncatedText = substring(0, length < maxChars ? length : maxChars);
    if (length > maxChars) {
      truncatedText += '...';
    }
    return truncatedText;
  }

  String? withBaseUrl() {
    if (isEmpty) return this;
    if (startsWith('http')) return this;
    final cleanPath = startsWith("/") ? substring(1) : this;

    return '${ApiStrings.apiUrl}$cleanPath';
  }

  String truncateToWords(int maxWords) {
    final words = split(' '); // Split the input string into words
    final truncatedWords = words.take(maxWords); // Select the first maxWords
    final truncatedString = truncatedWords.join(
      ' ',
    ); // Join the selected words back into a string
    return truncatedString;
  }

  double toDouble() {
    return double.parse(this);
  }

  int toInt() {
    return int.parse(this);
  }

  String formatDate({
    String targetFormat = 'd MMMM. y hh:mm a',
    String local = 'en',
  }) {
    final DateTime parsedDate = DateTime.parse(this).toLocal();
    final DateFormat formattedDate = DateFormat(targetFormat, local);
    return formattedDate.format(parsedDate);
  }

  Color toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      final int? color = int.tryParse("0x$hexColor");
      return color == null ? AppColors.white : Color(color);
    }
    return AppColors.white;
  }
}
