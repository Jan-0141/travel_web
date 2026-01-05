import 'package:flutter/material.dart';
import 'package:travel_web/theme/app_colors.dart';

import '../theme/app_theme.dart';

class ButtonWithImageWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool loading;
  final bool enabled;
  final double height;
  final double width;
  final Widget? icon;
  final Color ? color;
  final String? imagePath;

  const ButtonWithImageWidget({
    super.key,
    required this.text,
    required this.onPressed,
    this.loading = false,
    this.enabled = true,
    this.height = 48,
    this.width = 150,
    this.icon,
    this.color,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: enabled && !loading ? onPressed : null,
        style:   theme.elevatedButtonTheme.style!.copyWith(
           backgroundColor:WidgetStateProperty.resolveWith((states) {
          return AppColors.buttonSecondary; // สีปุ่มปกติ
         },),
         side: WidgetStateProperty.resolveWith((states) {
          return BorderSide(
            color: AppColors.buttonBorderColor,
            width: 2,
          ); // ขอบปุ่ม
         },),
        ),
        
        child: loading
            ? SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  //color: color ?? theme.colorScheme.onPrimary,
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if(imagePath != null) ...[
                    Image.asset(
                      imagePath!,
                      height: 24,
                      width: 24,
                    ),
                    const SizedBox(width: 8),
                  ],
                  if (icon != null) ...[
                    icon!,
                    const SizedBox(width: 8),
                  ],
                  Text(text),
                ],
              ),
      ),
    );
  }
}
