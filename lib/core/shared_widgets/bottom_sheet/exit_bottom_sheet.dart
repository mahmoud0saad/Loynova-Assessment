import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loynova_app/core/constants/app_radius.dart';
import 'package:loynova_app/core/helpers/extensions/gap_extensions.dart';
import 'package:loynova_app/core/theme/app_colors.dart';
import 'package:loynova_app/core/theme/typography/agri_text_theme.dart';
import 'package:loynova_app/generated/l10n.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Future<bool> showExitBottomSheet({
  required BuildContext context,
  required String title,
  required String subTitle,
  required Function onConfirm,
  bool? customOnConfirm,
  IconData? icon,
}) async {
  final bool? result = await showMaterialModalBottomSheet<bool>(
    context: context,
    isDismissible: true,
    shape: RoundedRectangleBorder(
      borderRadius: AppRadius.radiusExtraLargeToVertical,
    ),
    builder: (ctx) => Container(
      width: 310.w,
      height: 300.h,
      alignment: Alignment.center,
      child: Stack(
        children: [
          SizedBox(width: 310.w, height: 300.h),
          PositionedDirectional(
            end: 0.w,
            top: 10.h,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(FontAwesomeIcons.xmark, size: 25),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                25.h.gap,
                Icon(
                  icon ?? Icons.exit_to_app,
                  size: 70.sp,
                  color: AppColors.primaryBlue,
                ),
                10.h.gap,
                Text(
                  title,
                  style: AgriTextTheme.of(
                    context,
                  ).heading2.bold(color: AppColors.black),
                ),
                Center(
                  child: Text(
                    subTitle,
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    style: AgriTextTheme.of(
                      context,
                    ).button.med(color: AppColors.naturalGray2),
                  ),
                ),
                30.h.gap,
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          foregroundColor: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(S.of(context).cancel),
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryBlue,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: customOnConfirm == true
                            ? () => onConfirm()
                            : () {
                                onConfirm();
                                Navigator.of(context).pop(true);
                              },
                        child: Text(S.of(context).confirm),
                      ),
                    ),
                  ],
                ),
                30.h.gap,
              ],
            ),
          ),
        ],
      ),
    ),
  );

  return result ?? false;
}
