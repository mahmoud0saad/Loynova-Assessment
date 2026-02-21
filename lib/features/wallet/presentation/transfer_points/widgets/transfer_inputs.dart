import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loynova_app/core/theme/inputs/agri_base_input.dart';
import 'package:loynova_app/core/theme/inputs/agri_input_mixin.dart';
import 'package:loynova_app/generated/l10n.dart';

import '../utils/transfer_validators.dart';

class TransferRecipientInput extends AgriBaseInput {
  final TextEditingController controller;
  const TransferRecipientInput({
    super.key,
    required this.controller,
    required super.label,
    super.onChange,
  });

  @override
  State<TransferRecipientInput> createState() => _TransferRecipientInputState();
}

class _TransferRecipientInputState extends State<TransferRecipientInput>
    with AgriInput<TransferRecipientInput> {
  @override
  TextEditingController? get inputController => widget.controller;

  @override
  String? getHint() => S.current.recipient_hint;

  // @override
  // Widget? getPrefix() {
  //   return Icon(
  //     Icons.person_outline_rounded,
  //     color: AppColors.walletPrimary,
  //     size: 22.spMin,
  //   );
  // }

  @override
  BoxConstraints get prefixConstraints =>
      BoxConstraints(minWidth: 44.w, maxHeight: 24.r, minHeight: 24.r);

  @override
  TextInputType? get keyboardType => TextInputType.emailAddress;

  @override
  String? Function(String?)? get validator =>
      (v) => TransferValidators.validateRecipient(context, v);

  // Sensitive data handling (autocorrect: false, enableSuggestions: false)
  // is built into AgriInput mixin!
}

class TransferPointsInput extends AgriBaseInput {
  final TextEditingController controller;
  final int availableBalance;

  const TransferPointsInput({
    super.key,
    required this.controller,
    required this.availableBalance,
    required super.label,
    super.onChange,
  });

  @override
  State<TransferPointsInput> createState() => _TransferPointsInputState();
}

class _TransferPointsInputState extends State<TransferPointsInput>
    with AgriInput<TransferPointsInput> {
  @override
  TextEditingController? get inputController => widget.controller;

  @override
  String? getHint() => S.current.points_min_hint;

  // @override
  // Widget? getPrefix() {
  //   return Icon(
  //     Icons.stars_rounded,
  //     color: AppColors.walletPrimary,
  //     size: 22.spMin,
  //   );
  // }

  @override
  BoxConstraints get prefixConstraints =>
      BoxConstraints(minWidth: 44.w, maxHeight: 24.r, minHeight: 24.r);

  @override
  List<TextInputFormatter>? get formatters => [
    FilteringTextInputFormatter.digitsOnly,
  ];

  @override
  TextInputType? get keyboardType =>
      const TextInputType.numberWithOptions(signed: false, decimal: false);

  @override
  String? Function(String?)? get validator =>
      (v) => TransferValidators.validatePoints(
        context,
        v,
        widget.availableBalance,
      );
}

class TransferNoteInput extends AgriBaseInput {
  final TextEditingController controller;
  const TransferNoteInput({
    super.key,
    required this.controller,
    required String label,
    super.onChange,
  }) : super(label: label);

  @override
  State<TransferNoteInput> createState() => _TransferNoteInputState();
}

class _TransferNoteInputState extends State<TransferNoteInput>
    with AgriInput<TransferNoteInput> {
  @override
  TextEditingController? get inputController => widget.controller;

  @override
  String? getHint() => S.current.note_hint;

  // @override
  // Widget? getPrefix() {
  //   return Padding(
  //     padding: EdgeInsets.only(bottom: 50.h),
  //     child: Icon(
  //       Icons.notes_rounded,
  //       color: AppColors.walletPrimary,
  //       size: 22.spMin,
  //     ),
  //   );
  // }

  @override
  BoxConstraints get prefixConstraints =>
      BoxConstraints(minWidth: 44.w, minHeight: 24.r);

  @override
  int? get maxLines => 3;

  @override
  int? get maxLength => 150;

  @override
  String? Function(String?)? get validator =>
      (v) => TransferValidators.validateNote(context, v);
}
