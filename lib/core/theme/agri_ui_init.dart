import 'package:loynova_app/core/theme/theme_bloc/theme_bloc.dart';
import 'package:loynova_app/core/theme/typography/agri_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AgriUiInitializer extends StatelessWidget {
  const AgriUiInitializer({super.key, required this.child, required this.designSize});
  final Widget child;
  final Size designSize;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(
          create: (context) =>
              ThemeBloc()..add(const ThemeEvent.initValuUiKitEvent()),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 694),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (ctx, _) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              onGestureDetector(context);
            },
            child: BlocBuilder<ThemeBloc, ThemeState>(
              builder: (c, state) {
                return AgriTextTheme(theme: state.currentTheme, child: child);
              },
            ),
          );
        },
      ),
    );
  }

  void onGestureDetector(BuildContext context) {
    final FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }
}
