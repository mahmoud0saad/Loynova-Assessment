import 'package:loynova_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Validator {
  static var decimalKeyboardType = const TextInputType.numberWithOptions(
    signed: false,
    decimal: true,
  );
  static var nonDecimalInputFormatter = [
    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
    FilteringTextInputFormatter.deny(RegExp('[\\-|\\ ]')),
    FilteringTextInputFormatter.digitsOnly,
  ];
  static var decimalInputFormatter = [
    LengthLimitingTextInputFormatter(5),
    FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
  ];
  static var stringInputFormatter = FilteringTextInputFormatter.deny(
    RegExp("[0-9||٠-٩]"),
  );

  String? noValidate() {
    return null;
  }

  static String? validateEmpty(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? S.current.fill_the_field;
    }
    return null;
  }

  static String? validateEmptyNew(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? "";
    }
    return null;
  }

  String? validateTaxRate(String value) {
    if (value.isNotEmpty && double.parse(value) <= 0) {
      return S.current.please_enter_correct_tax_rate;
    }
    return null;
  }

  static String? validatePostalCode(
    String? value, {
    bool ignoreIfEmpty = false,
  }) {
    final String? emptyError = validateEmpty(value);
    if (ignoreIfEmpty && emptyError != null) return null;
    if (emptyError != null) return emptyError;
    final RegExp regExp = RegExp(r'^[0-9]{5}$');
    final bool isValid = regExp.hasMatch(value!);
    if (!isValid) {
      return S.current.postal_code_error_msg;
    }
    return null;
  }

  static String? validateTaxNumber(String? value) {
    final RegExp regExp = RegExp(r'^3\d{13}3$');
    final bool isValid = regExp.hasMatch(value!);
    if (!isValid && value.isNotEmpty) {
      return S.current.tax_number_error_msg;
    }
    return null;
  }

  //
  static String? validateCommercialRegister(String? value) {
    final RegExp regExp = RegExp(r'^[0-9]{10}$');
    final bool isValid = regExp.hasMatch(value!);
    if (!isValid) {
      return S.current.commercial_register_error_msg;
    }
    return null;
  }

  static String? validatePassword(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? S.current.all_required;
    } else if (value.length < 8) {
      return message ?? S.current.password_must_8_chars_long;
    }
    return null;
  }

  static String? validateEmail(String? value, {String? message}) {
    if (value!.trim() == "") {
      return null;
    } else if (!RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(value)) {
      return message ?? S.current.emailValidationError;
    }
    return null;
  }

  static String? validateMoreThanTheeWords(String? value, {String? message}) {
    final RegExp regExp = RegExp(
      r"^([\w\u0600-\u06FF]+\s?){0,2}[\w\u0600-\u06FF]+$",
    );
    final RegExp singleWordRegExp = RegExp(r"^[\w\u0600-\u06FF]+$");
    final String stringgg = value!.trim();
    if (stringgg.isEmpty) {
      return message ?? S.current.all_required;
    } else if (!regExp.hasMatch(stringgg) &&
        !singleWordRegExp.hasMatch(stringgg)) {
      return message ?? S.current.enter_full_name;
    }
    return null;
  }

  static String? validatePhone(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty || value.length < 9) {
      return message ?? S.current.enter_vaild_phone_number;
    } else {
      final RegExp regExp = RegExp(
        r'^(?:\+201|01)[0-2,5][0-9]{8}$',
        caseSensitive: false,
      );

      final bool isVaild = regExp.hasMatch(value);

      return isVaild ? null : S.current.enter_vaild_phone_number;
    }
  }

  String? validatePasswordConfirm(
    String? value, {
    required String pass,
    String? message,
  }) {
    if (value?.trim().isEmpty ?? true) {
      return message ?? S.current.fill_the_field;
    } else if (value != pass) {
      return message ?? S.current.ensure_passwords_match;
    }
    return null;
  }

  static String? validateNumbers(String? value, String msg) {
    if (value == null || value.isEmpty) {
      return S.current.field_required;
    } else if (double.tryParse(value)! <= 0.0) {
      return S.current.price_grater_than_one;
    } else {
      return null;
    }
  }
}

extension ValidatorDrop<DataType> on DataType {
  String? validateDropDown(BuildContext context, {String? message}) {
    if (this == null) {
      return message ?? S.current.fill_the_field;
    }
    return null;
  }
}
