import 'package:loynova_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'agri_base_input.dart';
import 'agri_input_mixin.dart';

class AgriSearchTextField extends AgriBaseInput {
  const AgriSearchTextField({
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
  State<AgriSearchTextField> createState() => _AgriRegularTextFieldState();
}

class _AgriRegularTextFieldState extends State<AgriSearchTextField>
    with AgriInput<AgriSearchTextField> {
  final TextEditingController _controller = TextEditingController();
  @override
  TextEditingController? get inputController =>
      widget.controller ?? _controller;

  @override
  String? getHint() {
    return widget.label;
  }

  @override
  void didUpdateWidget(covariant AgriSearchTextField oldWidget) {
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
  Color getFillColor() {
    return AppColors.naturalGray3;
  }

  @override
  Widget? getPrefix() {
    return const Icon(
      FontAwesomeIcons.magnifyingGlass,
      size: 16,
      color: AppColors.naturalGray,
    );
  }

  @override
  FormTextType get type => FormTextType.basic;

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
