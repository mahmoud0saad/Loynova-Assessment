import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

abstract class AgriBaseInput extends StatefulWidget {
  const AgriBaseInput({
    super.key,
    this.validator,
    this.maxLength,
    required this.label,
    this.initialValue,
    this.action,
    this.type,
    this.formatters,
    this.enabled,
    this.onChange,
    this.onSubmit,
    this.onSave,
    this.onFocusChange,
    this.autoSubmit = false,
  });
  final String? Function(String?)? validator;
  final String label;
  final String? initialValue;
  final TextInputAction? action;
  final TextInputType? type;
  final List<TextInputFormatter>? formatters;
  final bool? enabled;
  final Function(String)? onChange;
  final Function(String)? onSubmit;
  final Function(String?)? onSave;
  final void Function(bool focus)? onFocusChange;
  final int? maxLength;
  final bool autoSubmit;
}
