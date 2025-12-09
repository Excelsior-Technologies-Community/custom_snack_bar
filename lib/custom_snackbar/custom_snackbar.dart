import 'package:flutter/material.dart';

enum ToastPosition { top, center, bottom }

class CustomNotifier {
  // ================= Custom Toast =================
  void showCustomToast(
    BuildContext context, {
    required String message,
    IconData? icon,
    Color backgroundColor = Colors.black87,
    Color textColor = Colors.white,
    double borderRadius = 20,
    Duration duration = const Duration(seconds: 2),
    EdgeInsets? padding,
    ShapeBorder? shape,
    double elevation = 6,
    ToastPosition position = ToastPosition.bottom,
    double offset = 40,
  }) {
    final overlay = Overlay.of(context);
    late OverlayEntry entry;

    // Choose position dynamically
    double? top;
    double? bottom;

    if (position == ToastPosition.top) {
      top = offset;
    } else if (position == ToastPosition.center) {
      top = MediaQuery.of(context).size.height / 2 - 40;
    } else {
      bottom = offset;
    }

    entry = OverlayEntry(
      builder: (context) => Positioned(
        top: top,
        bottom: bottom,
        left: 20,
        right: 20,
        child: Material(
          color: Colors.transparent,
          elevation: elevation,
          shape:
              shape ??
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
          child: Container(
            padding:
                padding ??
                const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: ShapeDecoration(
              color: backgroundColor,
              shape:
                  shape ??
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
            ),
            child: Row(
              children: [
                if (icon != null) Icon(icon, color: textColor),
                if (icon != null) const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    message,
                    style: TextStyle(color: textColor, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    overlay.insert(entry);

    Future.delayed(duration, () => entry.remove());
  }

  // ================= Custom SnackBar =================
  void showCustomSnackBar(
    BuildContext context, {
    required String message,
    IconData? icon,
    Color backgroundColor = Colors.black87,
    Color textColor = Colors.white,
    double borderRadius = 20,
    ShapeBorder? shape,
    EdgeInsets? padding,
    Duration duration = const Duration(seconds: 3),
  }) {
    final snackBar = SnackBar(
      duration: duration,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Container(
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: ShapeDecoration(
          color: backgroundColor,
          shape:
              shape ??
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
        ),
        child: Row(
          children: [
            if (icon != null) Icon(icon, color: textColor),
            if (icon != null) const SizedBox(width: 10),
            Expanded(
              child: Text(
                message,
                style: TextStyle(color: textColor, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
