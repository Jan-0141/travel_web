import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      error: AppColors.error,
    ),
    scaffoldBackgroundColor: AppColors.background,

    textTheme: TextTheme(
      headlineMedium: AppTextStyles.headline,
      bodyMedium: AppTextStyles.body,
      bodySmall: AppTextStyles.caption,
    ),

    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
    backgroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return AppColors.buttonThemeColor.withOpacity(0.35);
      }
      return AppColors.buttonThemeColor; // สีปุ่มปกติ
    }),
    foregroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return AppColors.textPrimary.withOpacity(0.35);
      }
      return AppColors.textPrimary; // สีข้อความปกติ (เช่น ดำ)
    }),
    textStyle: WidgetStateProperty.all(
      AppTextStyles.body.copyWith(fontWeight: FontWeight.bold),
    ),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),
    ),
  );
}
