import 'package:gap/gap.dart';

extension GapExtensions on num {
  Gap get gap => Gap(toDouble());
}
