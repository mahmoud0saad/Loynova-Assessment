import 'package:loynova_app/core/helpers/validator/validator.dart';
import 'package:loynova_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'agri_base_input.dart';
import 'agri_input_mixin.dart';

class AgriPasswordTextField extends AgriBaseInput {
  const AgriPasswordTextField({
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
  State<AgriPasswordTextField> createState() => _AgriRegularTextFieldState();
}

class _AgriRegularTextFieldState extends State<AgriPasswordTextField>
    with AgriInput<AgriPasswordTextField> {
  final TextEditingController _controller = TextEditingController();
  @override
  TextEditingController? get inputController =>
      widget.controller ?? _controller;

  bool isPasswordObscure = true;

  @override
  String? getHint() {
    return widget.label;
  }

  @override
  String? Function(String? p1)? get validator => Validator.validatePassword;

  @override
  void didUpdateWidget(covariant AgriPasswordTextField oldWidget) {
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
  List<Widget> get stackComponents {
    return [
      Row(
        children: [
          const Spacer(),
          IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(
              isPasswordObscure ? Icons.visibility : Icons.visibility_off,
              color: isPasswordObscure ? AppColors.black800 : AppColors.gray800,
            ),
            onPressed: () {
              setState(() {
                isPasswordObscure = !isPasswordObscure;
              });
            },
          ),
        ],
      ),
    ];
  }

  @override
  TextInputType? get keyboardType => TextInputType.visiblePassword;
  @override
  bool get obscured => isPasswordObscure;
  @override
  bool get enabled => true;

  @override
  BoxConstraints? get suffixConstraints {
    return BoxConstraints(
      minWidth: 28.w,
      maxWidth: 32.w,
      maxHeight: 24.r,
      minHeight: 24.r,
    );
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
