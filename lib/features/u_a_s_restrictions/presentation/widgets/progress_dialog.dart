import 'package:flutter/material.dart'
    show
        AlwaysStoppedAnimation,
        BuildContext,
        Center,
        CircularProgressIndicator,
        Color,
        showDialog;

final class ProgressDialog {
  static void show(
    BuildContext context, {
    Color? progressIndicatorColor,
  }) {
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (_) => Center(
        child: CircularProgressIndicator(
          valueColor: switch (progressIndicatorColor != null) {
            true => AlwaysStoppedAnimation<Color>(
                progressIndicatorColor!,
              ),
            false => null,
          },
        ),
      ),
    );
  }
}
