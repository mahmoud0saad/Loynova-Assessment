import 'package:flutter/material.dart';

import 'agri_base_input.dart';
import 'agri_input_mixin.dart';

class AgriRegularTextField extends AgriBaseInput {
  const AgriRegularTextField({
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
    this.maxLines = 1,
  });
  final TextEditingController? controller;
  final int? maxLines;
  @override
  State<AgriRegularTextField> createState() => _AgriRegularTextFieldState();
}

class _AgriRegularTextFieldState extends State<AgriRegularTextField>
    with AgriInput<AgriRegularTextField> {
  final TextEditingController _controller = TextEditingController();
  @override
  TextEditingController? get inputController =>
      widget.controller ?? _controller;

  @override
  int? get maxLines => widget.maxLines;

  @override
  String? getHint() {
    return widget.label;
  }

  @override
  void didUpdateWidget(covariant AgriRegularTextField oldWidget) {
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
  FormTextType get type => FormTextType.full;

  // @override
  // String? Function(String? p1)? get validator => Validator.validateEmpty;
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
