import 'package:loynova_app/core/helpers/validator/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/text_formatter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'agri_base_input.dart';
import 'agri_input_mixin.dart';

class AgriPhoneTextField extends AgriBaseInput {
  const AgriPhoneTextField({
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
  State<AgriPhoneTextField> createState() => _AgriRegularTextFieldState();
}

class _AgriRegularTextFieldState extends State<AgriPhoneTextField>
    with AgriInput<AgriPhoneTextField> {
  final TextEditingController _controller = TextEditingController();
  @override
  TextEditingController? get inputController =>
      widget.controller ?? _controller;

  @override
  String? getHint() {
    return widget.label;
  }

  @override
  List<TextInputFormatter>? get formatters => [
    ...Validator.nonDecimalInputFormatter,
    LengthLimitingTextInputFormatter(11),
  ];

  @override
  String? Function(String? p1)? get validator => Validator.validatePhone;

  @override
  void didUpdateWidget(covariant AgriPhoneTextField oldWidget) {
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
  TextInputType? get keyboardType {
    return const TextInputType.numberWithOptions(signed: false);
  }

  // @override
  // Widget? getSuffix() {
  //   return Center(
  //     widthFactor: 1,
  //     child: Text(
  //       '966+',
  //       style: AgriTextTheme.of(
  //         context,
  //       ).heading3.med(color: AppColors.naturalGray2),
  //     ),
  //   );
  // }

  @override
  BoxConstraints? get suffixConstraints {
    return BoxConstraints(maxHeight: 24.r, minHeight: 24.r);
  }

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
