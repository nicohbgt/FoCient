import '../colors/app_colors.dart';

class AppIconColor {
  AppIconColor._();

  static get defaultColor => AppColors.neutral.c600;

  static get active => AppColors.primary.c500;

  static get disabled => AppColors.neutral.c400;

  static get success => AppColors.success.c500;

  static get warning => AppColors.warning.c500;

  static get error => AppColors.error.c500;

  static get info => AppColors.info.c500;
}
