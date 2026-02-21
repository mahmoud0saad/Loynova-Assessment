String formatNumber(int value) {
  if (value.abs() >= 1000) {
    final s = value.toString();
    final result = StringBuffer();
    final isNeg = value < 0;
    final digits = isNeg ? s.substring(1) : s;
    for (int i = 0; i < digits.length; i++) {
      if (i > 0 && (digits.length - i) % 3 == 0) {
        result.write(',');
      }
      result.write(digits[i]);
    }
    return isNeg ? '-${result.toString()}' : result.toString();
  }
  return value.toString();
}
