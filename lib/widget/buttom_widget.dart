import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool loading;
  final bool enabled;
  final double height;
  final double width;
  final Widget? icon;
  final Color ? color;

  const ButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    this.loading = false,
    this.enabled = true,
    this.height = 48,
    this.width = 150,
    this.icon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: enabled && !loading ? onPressed : null,
        style:   theme.elevatedButtonTheme.style,
        // ElevatedButton.styleFrom(
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(12),
        //   ),
        // ),
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
