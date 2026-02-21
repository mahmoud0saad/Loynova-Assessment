import 'package:intl/intl.dart';

extension AppStrings on String {
  String truncateToChars(int maxChars) {
    String truncatedText = substring(0, length < maxChars ? length : maxChars);
    if (length > maxChars) {
      truncatedText += '...';
    }
    return truncatedText;
  }

  String truncateToWords(int maxWords) {
    final words = split(' '); // Split the input string into words
    final truncatedWords = words.take(maxWords); // Select the first maxWords
    final truncatedString =
        truncatedWords.join(' '); // Join the selected words back into a string
    return truncatedString;
  }

  double toDouble() {
    return double.parse(this);
  }

  int toInt() {
    return int.parse(this);
  }

  String formatDate(
      {String targetFormat = 'd MMMM. y hh:mm a', String local = 'en'}) {
    final DateTime parsedDate = DateTime.parse(this).toLocal();
    final DateFormat formattedDate = DateFormat(targetFormat, local);
    return formattedDate.format(parsedDate);
  }
}
