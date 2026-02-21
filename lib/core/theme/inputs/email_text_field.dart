import 'package:loynova_app/core/helpers/validator/validator.dart';
import 'package:flutter/material.dart';

import 'agri_base_input.dart';
import 'agri_input_mixin.dart';

class AgriEmailTextField extends AgriBaseInput {
  const AgriEmailTextField({
    super.key,
    super.validator,
    required super.label,
    super.initialValue,
    super.action,
    super.type,
    super.formatters,
    super.enabled,
    super.onChange,
    super.onSubmit,
    super.onSave,
    super.maxLength,
    this.controller,
    super.onFocusChange,
    super.autoSubmit,
  });
  final TextEditingController? controller;
  @override
  State<AgriEmailTextField> createState() => _AgriRegularTextFieldState();
}

class _AgriRegularTextFieldState extends State<AgriEmailTextField>
    with AgriInput<AgriEmailTextField> {
  final TextEditingController _controller = TextEditingController();
  @override
  TextEditingController? get inputController =>
      widget.controller ?? _controller;

  @override
  String? getHint() {
    return widget.label;
  }

  @override
  void didUpdateWidget(covariant AgriEmailTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialValue != oldWidget.initialValue) {
      Future.delayed(Duration.zero, () {
        _controller.text = widget.initialValue ?? "";
        _controller.selection = TextSelection.fromPosition(
          TextPosition(offset: _controller.text.length),
        );
      });
    }
  }

  @override
  bool get enabled => true;

  @override
  TextInputType? get keyboardType => TextInputType.emailAddress;
  @override
  FormTextType get type => FormTextType.full;
  @override
  String? Function(String? p1)? get validator => Validator.validateEmail;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _controller.text = widget.initialValue ?? "";
      _controller.selection = TextSelection.fromPosition(
        TextPosition(offset: _controller.text.length),
      );
    });
  }
}
