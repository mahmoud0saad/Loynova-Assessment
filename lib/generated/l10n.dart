// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Change Password`
  String get change_password {
    return Intl.message(
      'Change Password',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `Password Changed Successfully`
  String get password_changed_successfully {
    return Intl.message(
      'Password Changed Successfully',
      name: 'password_changed_successfully',
      desc: '',
      args: [],
    );
  }

  /// `An Error Occurred`
  String get error_occurred {
    return Intl.message(
      'An Error Occurred',
      name: 'error_occurred',
      desc: '',
      args: [],
    );
  }

  /// `Old Password`
  String get old_password {
    return Intl.message(
      'Old Password',
      name: 'old_password',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Old Password`
  String get please_enter_old_password {
    return Intl.message(
      'Please Enter Old Password',
      name: 'please_enter_old_password',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get new_password {
    return Intl.message(
      'New Password',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter New Password`
  String get please_enter_new_password {
    return Intl.message(
      'Please Enter New Password',
      name: 'please_enter_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters or digits long`
  String get password_must_8_chars_long {
    return Intl.message(
      'Password must be at least 8 characters or digits long',
      name: 'password_must_8_chars_long',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password`
  String get confirm_new_password {
    return Intl.message(
      'Confirm New Password',
      name: 'confirm_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Passwords Don't Match`
  String get passwords_dont_match {
    return Intl.message(
      'Passwords Don\'t Match',
      name: 'passwords_dont_match',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `My Wallet`
  String get wallet_title {
    return Intl.message('My Wallet', name: 'wallet_title', desc: '', args: []);
  }

  /// `Available Balance`
  String get available_balance {
    return Intl.message(
      'Available Balance',
      name: 'available_balance',
      desc: '',
      args: [],
    );
  }

  /// `pts`
  String get points {
    return Intl.message('pts', name: 'points', desc: '', args: []);
  }

  /// `Expiring soon`
  String get expiring_soon {
    return Intl.message(
      'Expiring soon',
      name: 'expiring_soon',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get see_all {
    return Intl.message('See All', name: 'see_all', desc: '', args: []);
  }

  /// `Points History`
  String get points_history {
    return Intl.message(
      'Points History',
      name: 'points_history',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get filter_all {
    return Intl.message('All', name: 'filter_all', desc: '', args: []);
  }

  /// `Earned`
  String get filter_earn {
    return Intl.message('Earned', name: 'filter_earn', desc: '', args: []);
  }

  /// `Redeemed`
  String get filter_redeem {
    return Intl.message('Redeemed', name: 'filter_redeem', desc: '', args: []);
  }

  /// `Transfers`
  String get filter_transfer {
    return Intl.message(
      'Transfers',
      name: 'filter_transfer',
      desc: '',
      args: [],
    );
  }

  /// `No recent transactions`
  String get no_transactions {
    return Intl.message(
      'No recent transactions',
      name: 'no_transactions',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get something_went_wrong {
    return Intl.message(
      'Something went wrong',
      name: 'something_went_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message('Retry', name: 'retry', desc: '', args: []);
  }

  /// `Earned from {merchant}`
  String earned_from(Object merchant) {
    return Intl.message(
      'Earned from $merchant',
      name: 'earned_from',
      desc: '',
      args: [merchant],
    );
  }

  /// `Redeemed at {merchant}`
  String redeemed_at(Object merchant) {
    return Intl.message(
      'Redeemed at $merchant',
      name: 'redeemed_at',
      desc: '',
      args: [merchant],
    );
  }

  /// `Transfer Points`
  String get transfer_points_title {
    return Intl.message(
      'Transfer Points',
      name: 'transfer_points_title',
      desc: '',
      args: [],
    );
  }

  /// `Recipient Email / Phone`
  String get recipient_label {
    return Intl.message(
      'Recipient Email / Phone',
      name: 'recipient_label',
      desc: '',
      args: [],
    );
  }

  /// `e.g. +201234567890 or user@example.com`
  String get recipient_hint {
    return Intl.message(
      'e.g. +201234567890 or user@example.com',
      name: 'recipient_hint',
      desc: '',
      args: [],
    );
  }

  /// `Points to Transfer`
  String get points_to_transfer {
    return Intl.message(
      'Points to Transfer',
      name: 'points_to_transfer',
      desc: '',
      args: [],
    );
  }

  /// `Min 100 pts`
  String get points_min_hint {
    return Intl.message(
      'Min 100 pts',
      name: 'points_min_hint',
      desc: '',
      args: [],
    );
  }

  /// `Available: {balance} pts`
  String available_label(Object balance) {
    return Intl.message(
      'Available: $balance pts',
      name: 'available_label',
      desc: '',
      args: [balance],
    );
  }

  /// `Note (optional)`
  String get note_optional {
    return Intl.message(
      'Note (optional)',
      name: 'note_optional',
      desc: '',
      args: [],
    );
  }

  /// `Add a message... (max 150 chars)`
  String get note_hint {
    return Intl.message(
      'Add a message... (max 150 chars)',
      name: 'note_hint',
      desc: '',
      args: [],
    );
  }

  /// `Send Points`
  String get send_points {
    return Intl.message('Send Points', name: 'send_points', desc: '', args: []);
  }

  /// `Transfer Successful!`
  String get transfer_successful {
    return Intl.message(
      'Transfer Successful!',
      name: 'transfer_successful',
      desc: '',
      args: [],
    );
  }

  /// `Points transferred`
  String get points_transferred {
    return Intl.message(
      'Points transferred',
      name: 'points_transferred',
      desc: '',
      args: [],
    );
  }

  /// `New balance`
  String get new_balance {
    return Intl.message('New balance', name: 'new_balance', desc: '', args: []);
  }

  /// `Done`
  String get done {
    return Intl.message('Done', name: 'done', desc: '', args: []);
  }

  /// `Recipient is required`
  String get err_recipient_required {
    return Intl.message(
      'Recipient is required',
      name: 'err_recipient_required',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid email or Egyptian phone (+20XXXXXXXXXX)`
  String get err_invalid_recipient {
    return Intl.message(
      'Enter a valid email or Egyptian phone (+20XXXXXXXXXX)',
      name: 'err_invalid_recipient',
      desc: '',
      args: [],
    );
  }

  /// `Points amount is required`
  String get err_points_required {
    return Intl.message(
      'Points amount is required',
      name: 'err_points_required',
      desc: '',
      args: [],
    );
  }

  /// `Enter a whole number`
  String get err_whole_number {
    return Intl.message(
      'Enter a whole number',
      name: 'err_whole_number',
      desc: '',
      args: [],
    );
  }

  /// `Minimum transfer is 100 pts`
  String get err_minimum_pts {
    return Intl.message(
      'Minimum transfer is 100 pts',
      name: 'err_minimum_pts',
      desc: '',
      args: [],
    );
  }

  /// `Exceeds your balance of {balance} pts`
  String err_exceeds_balance(Object balance) {
    return Intl.message(
      'Exceeds your balance of $balance pts',
      name: 'err_exceeds_balance',
      desc: '',
      args: [balance],
    );
  }

  /// `Maximum 150 characters`
  String get err_max_chars {
    return Intl.message(
      'Maximum 150 characters',
      name: 'err_max_chars',
      desc: '',
      args: [],
    );
  }

  /// `Transfer failed`
  String get err_transfer_failed {
    return Intl.message(
      'Transfer failed',
      name: 'err_transfer_failed',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message('Today', name: 'today', desc: '', args: []);
  }

  /// `Yesterday`
  String get yesterday {
    return Intl.message('Yesterday', name: 'yesterday', desc: '', args: []);
  }

  /// `Fill the field`
  String get fill_the_field {
    return Intl.message(
      'Fill the field',
      name: 'fill_the_field',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a correct tax rate`
  String get please_enter_correct_tax_rate {
    return Intl.message(
      'Please enter a correct tax rate',
      name: 'please_enter_correct_tax_rate',
      desc: '',
      args: [],
    );
  }

  /// `Postal code error`
  String get postal_code_error_msg {
    return Intl.message(
      'Postal code error',
      name: 'postal_code_error_msg',
      desc: '',
      args: [],
    );
  }

  /// `Tax number error`
  String get tax_number_error_msg {
    return Intl.message(
      'Tax number error',
      name: 'tax_number_error_msg',
      desc: '',
      args: [],
    );
  }

  /// `Commercial register error`
  String get commercial_register_error_msg {
    return Intl.message(
      'Commercial register error',
      name: 'commercial_register_error_msg',
      desc: '',
      args: [],
    );
  }

  /// `All fields are required`
  String get all_required {
    return Intl.message(
      'All fields are required',
      name: 'all_required',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email`
  String get emailValidationError {
    return Intl.message(
      'Invalid email',
      name: 'emailValidationError',
      desc: '',
      args: [],
    );
  }

  /// `Enter your full name`
  String get enter_full_name {
    return Intl.message(
      'Enter your full name',
      name: 'enter_full_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid phone number`
  String get enter_vaild_phone_number {
    return Intl.message(
      'Enter a valid phone number',
      name: 'enter_vaild_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get ensure_passwords_match {
    return Intl.message(
      'Passwords do not match',
      name: 'ensure_passwords_match',
      desc: '',
      args: [],
    );
  }

  /// `Field is required`
  String get field_required {
    return Intl.message(
      'Field is required',
      name: 'field_required',
      desc: '',
      args: [],
    );
  }

  /// `Price must be greater than one`
  String get price_grater_than_one {
    return Intl.message(
      'Price must be greater than one',
      name: 'price_grater_than_one',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
