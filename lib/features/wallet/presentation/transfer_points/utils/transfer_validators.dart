import 'package:flutter/material.dart';
import 'package:loynova_app/generated/l10n.dart';

class TransferValidators {
  /// Regex for a valid Egyptian mobile phone number in international format.
  /// Matches: +20 followed by exactly 10 digits (e.g. +201234567890).
  static final egyptianPhoneRegex = RegExp(r'^\+20[0-9]{10}$');

  /// Minimal RFC-5322-inspired email regex.
  static final emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+\-]+@[a-zA-Z0-9.\-]+\.[a-zA-Z]{2,}$',
  );

  static String? validateRecipient(BuildContext context, String? v) {
    if (v == null || v.trim().isEmpty) {
      return S.of(context).err_recipient_required;
    }
    final input = v.trim();
    if (!egyptianPhoneRegex.hasMatch(input) && !emailRegex.hasMatch(input)) {
      return S.of(context).err_invalid_recipient;
    }
    return null;
  }

  static String? validatePoints(
    BuildContext context,
    String? v,
    int availableBalance,
  ) {
    if (v == null || v.trim().isEmpty) {
      return S.of(context).err_points_required;
    }
    final points = int.tryParse(v.trim());
    if (points == null) {
      return S.of(context).err_whole_number;
    }
    if (points < 100) {
      return S.of(context).err_minimum_pts;
    }
    if (points > availableBalance) {
      return S.of(context).err_exceeds_balance(availableBalance);
    }
    return null;
  }

  static String? validateNote(BuildContext context, String? v) {
    if (v != null && v.trim().length > 150) {
      return S.of(context).err_max_chars;
    }
    return null;
  }
}
