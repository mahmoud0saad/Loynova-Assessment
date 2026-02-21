import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loynova_app/core/theme/app_colors.dart';
import 'package:loynova_app/core/theme/typography/agri_text_theme.dart';

import 'agri_base_input.dart';

enum InputState { error, focus, unfocus, dimmed }

enum FormTextType { full, basic }

mixin AgriInput<T extends AgriBaseInput> on State<T> {
  final FocusNode inputNode = FocusNode();
  InputState currentState = InputState.unfocus;
  String? errorMessage;
  bool obscured = false;
  Timer? _timer;
  bool get disposeController {
    return false;
  }

  TextEditingController? get inputController {
    return null;
  }

  bool get enabled {
    return widget.enabled ?? true;
  }

  FormTextType get type {
    return FormTextType.full;
  }

  bool get readOnly {
    return false;
  }

  Widget? getPrefix() {
    return null;
  }

  String? getHint() {
    return null;
  }

  Widget? getSuffix() {
    return null;
  }

  void onFocusChange(bool hasFocus) {}
  @override
  void initState() {
    super.initState();
    initInput();
  }

  double? get getHeight {
    return null;
  }

  BoxDecoration get inputDecoration {
    return BoxDecoration(
      color: getFillColor(),
      border: Border.all(color: getBorderColor(), width: 1.5.r),
      borderRadius: BorderRadius.circular(12.r),
    );
  }

  EdgeInsets get inputPaddings {
    return EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h);
  }

  List<Widget> get stackComponents {
    return [];
  }

  Color getFillColor() {
    return enabled ? AppColors.white : AppColors.naturalGray3;
  }

  String? Function(String?)? get validator {
    return widget.validator;
  }

  String? inputValidator(String? value) {
    if (validator != null) {
      final String? error = validator!(value);
      if (error != null) {
        setState(() {
          currentState = InputState.error;
          errorMessage = error;
        });
      } else {
        if ((widget.enabled ?? true)) {
          setState(() {
            if (inputNode.hasFocus) {
              currentState = InputState.focus;
            } else {
              currentState = InputState.unfocus;
            }
            errorMessage = null;
          });
        }
      }
      return error;
    }
    setState(() {
      if (!(widget.enabled ?? true)) return;
      if (inputNode.hasFocus) {
        currentState = InputState.focus;
      } else {
        currentState = InputState.unfocus;
      }

      errorMessage = null;
    });
    return null;
  }

  void initInput() {
    inputNode.addListener(() {
      onFocusChange(inputNode.hasFocus);
      if (widget.onFocusChange != null) {
        widget.onFocusChange!(inputNode.hasFocus);
      }

      setState(() {
        if (currentState == InputState.error) return;
        if (inputNode.hasFocus) {
          currentState = InputState.focus;
        } else {
          currentState = InputState.unfocus;
        }
      });
    });
    if (!enabled) {
      setState(() {
        currentState = InputState.dimmed;
      });
    }
  }

  Widget? get prefixWidget {
    return null;
  }

  Color get cursorColor {
    return AppColors.primaryBlue900;
  }

  String get obscuringCharacter {
    return '*';
  }

  TextStyle get mainTextStyle {
    Color color = AppColors.black;
    if (!(widget.enabled ?? true)) {
      color = AppColors.red900;
    }
    return AgriTextTheme.of(context).heading4.med(color: color);
  }

  List<TextInputFormatter>? get formatters {
    return widget.formatters;
  }

  int? get maxLength {
    return widget.maxLength;
  }

  TextInputType? get keyboardType {
    return widget.type;
  }

  Function(String)? get onChange {
    return widget.onChange;
  }

  Function(String)? get onSubmit {
    return widget.onSubmit;
  }

  Function(String?)? get onSave {
    return widget.onSave;
  }

  String? get initValue {
    return widget.initialValue;
  }

  BoxConstraints get prefixConstraints {
    return BoxConstraints(
      minWidth: 10.w,
      maxWidth: 32.w,
      maxHeight: 24.r,
      minHeight: 10.r,
    );
  }

  BoxConstraints? get suffixConstraints {
    return null;
  }

  int? get minLines {
    return null;
  }

  int? get maxLines {
    return 1;
  }

  bool? get showCursor {
    return true;
  }

  @mustCallSuper
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (type == FormTextType.full)
          Container(
            alignment: AlignmentDirectional.topStart,
            child: Text(
              widget.label,
              style: AgriTextTheme.of(
                context,
              ).body2.regular(color: getLabelColor()),
            ),
          ),
        if (type == FormTextType.basic) SizedBox(height: 4.h),
        Stack(
          children: [
            Container(
              height: getHeight,
              decoration: inputDecoration,
              padding: inputPaddings,
              child: TextFormField(
                controller: inputController,
                obscureText: obscured,
                onChanged: (val) {
                  if (widget.autoSubmit) {
                    _timer?.cancel();
                    _timer = Timer(const Duration(seconds: 1), () {
                      onSubmit?.call(val);
                      _timer = null;
                    });
                  }

                  onChange?.call(val);
                },

                showCursor: showCursor,
                onFieldSubmitted: onSubmit,
                onSaved: onSave,
                maxLength: maxLength,
                readOnly: readOnly,
                initialValue: inputController != null ? null : initValue,
                focusNode: inputNode,
                minLines: minLines,
                maxLines: maxLines,
                decoration: InputDecoration(
                  suffixIconConstraints: suffixConstraints,
                  counter: null,
                  counterText: "",
                  counterStyle: const TextStyle(
                    fontSize: 0,
                    height: 0.001,
                    color: AppColors.red900,
                  ),

                  prefixIcon: getPrefix(),
                  suffixIcon: getSuffix(),
                  prefixIconConstraints: prefixConstraints,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  errorStyle: const TextStyle(
                    fontSize: 0,
                    height: 0.001,
                    color: AppColors.red900,
                  ),
                  errorText: null,
                  fillColor: getFillColor(),
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  hintText: getHint(),
                  hintStyle: AgriTextTheme.of(
                    context,
                  ).heading3.regular(color: AppColors.naturalGray2),
                  filled: true,
                  border: InputBorder.none,
                  alignLabelWithHint: false,
                  prefix: getPrefix(),
                ),
                cursorHeight: 16.h,
                validator: (value) {
                  return inputValidator(value);
                },
                style: mainTextStyle,
                textAlignVertical: TextAlignVertical.center,
                textInputAction: widget.action,
                keyboardType: keyboardType,
                obscuringCharacter: obscuringCharacter,
                inputFormatters: formatters,
                autocorrect: false,
                enableInteractiveSelection: true,
                enableSuggestions: false,
                enabled: enabled,
                cursorColor: cursorColor,
              ),
            ),
            ...stackComponents,
          ],
        ),
        if (currentState == InputState.error) ...[
          SizedBox(height: 4.h),
          Text(
            errorMessage ?? '',
            style: AgriTextTheme.of(context).small.med(color: AppColors.red900),
          ),
        ],
      ],
    );
  }

  bool isHasValue() {
    if (inputController?.text.isNotEmpty ?? false) {
      return true;
    }
    return false;
  }

  Color getBorderColor() {
    switch (currentState) {
      case InputState.dimmed:
      case InputState.unfocus:
        return AppColors.naturalGray;
      case InputState.error:
        return AppColors.red900;
      case InputState.focus:
        return AppColors.naturalGray;
    }
  }

  Color getLabelColor() {
    switch (currentState) {
      case InputState.focus:
        return AppColors.naturalGray2;
      case InputState.unfocus:
        return isHasValue() ? AppColors.naturalGray2 : AppColors.black800;
      case InputState.error:
        return AppColors.naturalGray2;
      case InputState.dimmed:
        return AppColors.black800;
    }
  }

  @override
  void dispose() {
    inputNode.dispose();
    if (disposeController) {
      inputController?.dispose();
    }
    _timer?.cancel();
    super.dispose();
  }
}
