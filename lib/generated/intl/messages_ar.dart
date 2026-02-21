// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(balance) => "المتاح: ${balance} نقطة";

  static String m1(merchant) => "مكتسبة من ${merchant}";

  static String m2(balance) => "التحويل يتجاوز رصيدك (${balance} نقطة)";

  static String m3(merchant) => "تم استبدالها في ${merchant}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "all_required": MessageLookupByLibrary.simpleMessage("جميع الحقول مطلوبة"),
    "available_balance": MessageLookupByLibrary.simpleMessage("الرصيد المتاح"),
    "available_label": m0,
    "cancel": MessageLookupByLibrary.simpleMessage("الغاء"),
    "change_password": MessageLookupByLibrary.simpleMessage(
      "تغيير كلمة المرور",
    ),
    "commercial_register_error_msg": MessageLookupByLibrary.simpleMessage(
      "خطأ في السجل التجاري",
    ),
    "confirm": MessageLookupByLibrary.simpleMessage("تأكيد"),
    "confirm_new_password": MessageLookupByLibrary.simpleMessage(
      "تأكيد كلمة المرور الجديدة",
    ),
    "done": MessageLookupByLibrary.simpleMessage("تم"),
    "earned_from": m1,
    "emailValidationError": MessageLookupByLibrary.simpleMessage(
      "بريد إلكتروني غير صالح",
    ),
    "ensure_passwords_match": MessageLookupByLibrary.simpleMessage(
      "كلمات المرور غير متطابقة",
    ),
    "enter_full_name": MessageLookupByLibrary.simpleMessage("أدخل اسمك الكامل"),
    "enter_vaild_phone_number": MessageLookupByLibrary.simpleMessage(
      "أدخل رقم هاتف صالح",
    ),
    "err_exceeds_balance": m2,
    "err_invalid_recipient": MessageLookupByLibrary.simpleMessage(
      "أدخل بريد إلكتروني صحيح أو هاتف مصري (+20XXXXXXXXXX)",
    ),
    "err_max_chars": MessageLookupByLibrary.simpleMessage(
      "الحد الأقصى ١٥٠ حرفاً",
    ),
    "err_minimum_pts": MessageLookupByLibrary.simpleMessage(
      "الحد الأدنى للتحويل ١٠٠ نقطة",
    ),
    "err_points_required": MessageLookupByLibrary.simpleMessage(
      "كمية النقاط مطلوبة",
    ),
    "err_recipient_required": MessageLookupByLibrary.simpleMessage(
      "معلومات المستلم مطلوبة",
    ),
    "err_transfer_failed": MessageLookupByLibrary.simpleMessage("فشل التحويل"),
    "err_whole_number": MessageLookupByLibrary.simpleMessage("أدخل رقم صحيح"),
    "error_occurred": MessageLookupByLibrary.simpleMessage("حدث خطأ"),
    "expiring_soon": MessageLookupByLibrary.simpleMessage(
      "تنتهي صلاحيتها قريباً",
    ),
    "field_required": MessageLookupByLibrary.simpleMessage("الحقل مطلوب"),
    "fill_the_field": MessageLookupByLibrary.simpleMessage("الحقل مطلوب"),
    "filter_all": MessageLookupByLibrary.simpleMessage("الكل"),
    "filter_earn": MessageLookupByLibrary.simpleMessage("مكتسب"),
    "filter_redeem": MessageLookupByLibrary.simpleMessage("مستبدل"),
    "filter_transfer": MessageLookupByLibrary.simpleMessage("تحويلات"),
    "new_balance": MessageLookupByLibrary.simpleMessage("الرصيد الجديد"),
    "new_password": MessageLookupByLibrary.simpleMessage("كلمة المرور الجديدة"),
    "no_transactions": MessageLookupByLibrary.simpleMessage(
      "لا توجد معاملات حديثة",
    ),
    "note_hint": MessageLookupByLibrary.simpleMessage(
      "أضف رسالة... (الحد الأقصى 150 حرفاً)",
    ),
    "note_optional": MessageLookupByLibrary.simpleMessage("ملاحظة (اختياري)"),
    "old_password": MessageLookupByLibrary.simpleMessage("كلمة المرور القديمة"),
    "password_changed_successfully": MessageLookupByLibrary.simpleMessage(
      "تم تغيير كلمة المرور بنجاح",
    ),
    "password_must_8_chars_long": MessageLookupByLibrary.simpleMessage(
      "يجب أن تتكون كلمة المرور من 8 أحرف أو أرقام على الأقل",
    ),
    "passwords_dont_match": MessageLookupByLibrary.simpleMessage(
      "كلمات المرور غير متطابقة",
    ),
    "please_enter_correct_tax_rate": MessageLookupByLibrary.simpleMessage(
      "الرجاء إدخال نسبة ضريبة صحيحة",
    ),
    "please_enter_new_password": MessageLookupByLibrary.simpleMessage(
      "الرجاء إدخال كلمة المرور الجديدة",
    ),
    "please_enter_old_password": MessageLookupByLibrary.simpleMessage(
      "الرجاء إدخال كلمة المرور القديمة",
    ),
    "points": MessageLookupByLibrary.simpleMessage("نقطة"),
    "points_history": MessageLookupByLibrary.simpleMessage("سجل النقاط"),
    "points_min_hint": MessageLookupByLibrary.simpleMessage(
      "الحد الأدنى ١٠٠ نقطة",
    ),
    "points_to_transfer": MessageLookupByLibrary.simpleMessage(
      "النقاط المراد تحويلها",
    ),
    "points_transferred": MessageLookupByLibrary.simpleMessage(
      "النقاط المحولة",
    ),
    "postal_code_error_msg": MessageLookupByLibrary.simpleMessage(
      "خطأ في الرمز البريدي",
    ),
    "price_grater_than_one": MessageLookupByLibrary.simpleMessage(
      "يجب أن يكون السعر أكبر من واحد",
    ),
    "recipient_hint": MessageLookupByLibrary.simpleMessage(
      "+201234567890 أو user@example.com",
    ),
    "recipient_label": MessageLookupByLibrary.simpleMessage(
      "البريد الإلكتروني / رقم هاتف المستلم",
    ),
    "redeemed_at": m3,
    "retry": MessageLookupByLibrary.simpleMessage("إعادة المحاولة"),
    "see_all": MessageLookupByLibrary.simpleMessage("عرض الكل"),
    "send_points": MessageLookupByLibrary.simpleMessage("إرسال النقاط"),
    "something_went_wrong": MessageLookupByLibrary.simpleMessage("حدث خطأ ما"),
    "tax_number_error_msg": MessageLookupByLibrary.simpleMessage(
      "خطأ في الرقم الضريبي",
    ),
    "today": MessageLookupByLibrary.simpleMessage("اليوم"),
    "transfer_points_title": MessageLookupByLibrary.simpleMessage(
      "تحويل النقاط",
    ),
    "transfer_successful": MessageLookupByLibrary.simpleMessage(
      "تم التحويل بنجاح!",
    ),
    "wallet_title": MessageLookupByLibrary.simpleMessage("محفظتي"),
    "yesterday": MessageLookupByLibrary.simpleMessage("أمس"),
  };
}
