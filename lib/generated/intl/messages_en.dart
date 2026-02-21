// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(balance) => "Available: ${balance} pts";

  static String m1(merchant) => "Earned from ${merchant}";

  static String m2(balance) => "Exceeds your balance of ${balance} pts";

  static String m3(merchant) => "Redeemed at ${merchant}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "all_required": MessageLookupByLibrary.simpleMessage(
      "All fields are required",
    ),
    "available_balance": MessageLookupByLibrary.simpleMessage(
      "Available Balance",
    ),
    "available_label": m0,
    "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "change_password": MessageLookupByLibrary.simpleMessage("Change Password"),
    "commercial_register_error_msg": MessageLookupByLibrary.simpleMessage(
      "Commercial register error",
    ),
    "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
    "confirm_new_password": MessageLookupByLibrary.simpleMessage(
      "Confirm New Password",
    ),
    "done": MessageLookupByLibrary.simpleMessage("Done"),
    "earned_from": m1,
    "emailValidationError": MessageLookupByLibrary.simpleMessage(
      "Invalid email",
    ),
    "ensure_passwords_match": MessageLookupByLibrary.simpleMessage(
      "Passwords do not match",
    ),
    "enter_full_name": MessageLookupByLibrary.simpleMessage(
      "Enter your full name",
    ),
    "enter_vaild_phone_number": MessageLookupByLibrary.simpleMessage(
      "Enter a valid phone number",
    ),
    "err_exceeds_balance": m2,
    "err_invalid_recipient": MessageLookupByLibrary.simpleMessage(
      "Enter a valid email or Egyptian phone (+20XXXXXXXXXX)",
    ),
    "err_max_chars": MessageLookupByLibrary.simpleMessage(
      "Maximum 150 characters",
    ),
    "err_minimum_pts": MessageLookupByLibrary.simpleMessage(
      "Minimum transfer is 100 pts",
    ),
    "err_points_required": MessageLookupByLibrary.simpleMessage(
      "Points amount is required",
    ),
    "err_recipient_required": MessageLookupByLibrary.simpleMessage(
      "Recipient is required",
    ),
    "err_transfer_failed": MessageLookupByLibrary.simpleMessage(
      "Transfer failed",
    ),
    "err_whole_number": MessageLookupByLibrary.simpleMessage(
      "Enter a whole number",
    ),
    "error_occurred": MessageLookupByLibrary.simpleMessage("An Error Occurred"),
    "expiring_soon": MessageLookupByLibrary.simpleMessage("Expiring soon"),
    "field_required": MessageLookupByLibrary.simpleMessage("Field is required"),
    "fill_the_field": MessageLookupByLibrary.simpleMessage("Fill the field"),
    "filter_all": MessageLookupByLibrary.simpleMessage("All"),
    "filter_earn": MessageLookupByLibrary.simpleMessage("Earned"),
    "filter_redeem": MessageLookupByLibrary.simpleMessage("Redeemed"),
    "filter_transfer": MessageLookupByLibrary.simpleMessage("Transfers"),
    "new_balance": MessageLookupByLibrary.simpleMessage("New balance"),
    "new_password": MessageLookupByLibrary.simpleMessage("New Password"),
    "no_transactions": MessageLookupByLibrary.simpleMessage(
      "No recent transactions",
    ),
    "note_hint": MessageLookupByLibrary.simpleMessage(
      "Add a message... (max 150 chars)",
    ),
    "note_optional": MessageLookupByLibrary.simpleMessage("Note (optional)"),
    "old_password": MessageLookupByLibrary.simpleMessage("Old Password"),
    "password_changed_successfully": MessageLookupByLibrary.simpleMessage(
      "Password Changed Successfully",
    ),
    "password_must_8_chars_long": MessageLookupByLibrary.simpleMessage(
      "Password must be at least 8 characters or digits long",
    ),
    "passwords_dont_match": MessageLookupByLibrary.simpleMessage(
      "Passwords Don\'t Match",
    ),
    "please_enter_correct_tax_rate": MessageLookupByLibrary.simpleMessage(
      "Please enter a correct tax rate",
    ),
    "please_enter_new_password": MessageLookupByLibrary.simpleMessage(
      "Please Enter New Password",
    ),
    "please_enter_old_password": MessageLookupByLibrary.simpleMessage(
      "Please Enter Old Password",
    ),
    "points": MessageLookupByLibrary.simpleMessage("pts"),
    "points_history": MessageLookupByLibrary.simpleMessage("Points History"),
    "points_min_hint": MessageLookupByLibrary.simpleMessage("Min 100 pts"),
    "points_to_transfer": MessageLookupByLibrary.simpleMessage(
      "Points to Transfer",
    ),
    "points_transferred": MessageLookupByLibrary.simpleMessage(
      "Points transferred",
    ),
    "postal_code_error_msg": MessageLookupByLibrary.simpleMessage(
      "Postal code error",
    ),
    "price_grater_than_one": MessageLookupByLibrary.simpleMessage(
      "Price must be greater than one",
    ),
    "recipient_hint": MessageLookupByLibrary.simpleMessage(
      "e.g. +201234567890 or user@example.com",
    ),
    "recipient_label": MessageLookupByLibrary.simpleMessage(
      "Recipient Email / Phone",
    ),
    "redeemed_at": m3,
    "retry": MessageLookupByLibrary.simpleMessage("Retry"),
    "see_all": MessageLookupByLibrary.simpleMessage("See All"),
    "send_points": MessageLookupByLibrary.simpleMessage("Send Points"),
    "something_went_wrong": MessageLookupByLibrary.simpleMessage(
      "Something went wrong",
    ),
    "tax_number_error_msg": MessageLookupByLibrary.simpleMessage(
      "Tax number error",
    ),
    "today": MessageLookupByLibrary.simpleMessage("Today"),
    "transfer_points_title": MessageLookupByLibrary.simpleMessage(
      "Transfer Points",
    ),
    "transfer_successful": MessageLookupByLibrary.simpleMessage(
      "Transfer Successful!",
    ),
    "wallet_title": MessageLookupByLibrary.simpleMessage("My Wallet"),
    "yesterday": MessageLookupByLibrary.simpleMessage("Yesterday"),
  };
}
